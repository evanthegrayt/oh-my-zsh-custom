#  ABOUT THIS FILE.
#  These are functions that cannot be in a subshell, and therefor cannot
#+ be put into a standalone script. DO NOT put anything in here that COULD
#+ be a script. NOTE that if you were to have an "exit" anywhere in the funciton,
#+ it would literally close the terminal. Again, this is due to this NOT running
#+ in a subshell. This is MUCH more difficult to do without breaking it than
#+ it sounds.

#===============================================================================
#@ begin function cdc()
#===============================================================================

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

