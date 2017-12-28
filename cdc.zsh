# Function to quickly switch to common directories. This won't be useful to
# anyone but me, but you can change it to be useful to you. NOTE that this does 
# NOT run in a subshell, so any `exit` command will close the shell. Use
# `return` instead.

cdc() {

    local dir=~/workflow/vagrant-ique/src
    local USAGE="cdc: cd to common directories

    USAGES:          CHANGE TO DIR:
    cdc R            [~/workflow/selection-CLUs/ruby]
    cdc B            [~/workflow/selection-CLUs/bash]
    cdc Y            [~/workflow/selection-CLUs/lib/yaml]
    cdc L            [~/workflow/selection-CLUs/lib]
    cdc w            [~/workflow/workflow.git]
    cdc l            [~/workflow/rb-lib.git]
    cdc j            [~/workflow/rb-jobs.git]
    cdc b            [~/bin]
    "

    if (( $# == 1 )); then
        case $1 in
            R) cd $dir/selection-CLUs/ruby     ;;
            B) cd $dir/selection-CLUs/bash     ;;
            L) cd $dir/selection-CLUs/lib      ;;
            Y) cd $dir/selection-CLUs/lib/yaml ;;
            w) cd $dir/workflow                ;;
            l) cd $dir/rb-lib                  ;;
            j) cd $dir/rb-jobs                 ;;
            b) cd ~/bin                        ;;
            *) print $USAGE                    ;;
        esac
    else
        print $USAGE
    fi

}

