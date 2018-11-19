# `cd` to my repos in my repo directories. I decided to do this, rather than
# adding to $CDPATH, because I don't like changing the default `cd` behavior.

cdc() {

    local dir
    local cd_dir="$1"
    local USAGE="$0: [DIRECTORY]"

    if (( ${#REPO_DIRS[@]} == 0 )); then
        print "You must \`export REPO_DIRS=()\`!" >&2
        return 2
    elif (( $# != 1 )); then
        print $USAGE >&2
        return 1
    fi

    for dir in ${REPO_DIRS[@]}; do
        if [[ -d $dir ]]; then
            if [[ -d $dir/$cd_dir ]]; then
                cd $dir/$cd_dir
                return 0
            fi
        else
            print "[$dir] is exported in \$REPO_DIRS, " \
                "but it's not a directory!" >&2
        fi
    done

    print "[$cd_dir] not found in ${REPO_DIRS[@]}" >&2
    return 2
}

