# `cd` to my repos in my repo directories. I decided to do this, rather than
# adding to $CDPATH, because I don't like changing the default `cd` behavior.

cdc() {

    local dir
    local cd_dir="$1"
    local USAGE="$0: [DIRECTORY]"

    if (( ${#REPO_DIRS[@]} == 0 )); then
        (>&2 print "You must \`export REPO_DIRS=()\`!")
        return 2
    elif (( $# != 1 )); then
        (>&2 print $USAGE)
        return 1
    fi

    for dir in ${REPO_DIRS[@]}; do
        if [[ -d $dir ]]; then
            if [[ -d $dir/$cd_dir ]]; then
                cd $dir/$cd_dir
                return 0
            fi
        else
            (>&2 print "[$dir] is exported in \$REPO_DIRS, " \
                "but it's not a directory!")
        fi
    done

    (>&2 print "[$cd_dir] not found in ${REPO_DIRS[@]}")
    return 2
}

