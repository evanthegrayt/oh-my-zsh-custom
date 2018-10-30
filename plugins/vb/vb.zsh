# Function to simplify using two vagrant boxes
# Probably only useful to me...

vb() {
    local box
    local cmd="$1"
    local cache="$ZSH_CACHE_DIR/vb.cache"
    local wf_dir="$HOME/workflow/"
    local boxes=(vagrant-{ique,dotcom})
    local current_vagrant_box=$( cat $cache )

    case "$cmd" in
        up)   cd $wf_dir/$current_vagrant_box && vagrant up   ;;
        ssh)  cd $wf_dir/$current_vagrant_box && vagrant ssh  ;;
        halt) cd $wf_dir/$current_vagrant_box && vagrant halt ;;
        list)
            for box in ${boxes[@]}; do
                if [[ $box == $current_vagrant_box ]]; then
                    print "* $box"
                else
                    print "  $box"
                fi
            done
            ;;
        switch)
            case $current_vagrant_box in
                vagrant-ique)   box=vagrant-dotcom        ;;
                vagrant-dotcom) box=vagrant-ique          ;;
                *) print "[CURRENT_VAGRANT_BOX] not set!" ;;
            esac
            print $box > $cache
            print "Switching to box [$box]"
            ;;
        *)
            [[ -n "$cmd" ]] && print "Invalid argument [$cmd]"
            print "Available arguments are:"
            print " - up"
            print " - ssh"
            print " - halt"
            print " - list"
            print " - switch"
            return 1
            ;;
    esac
}

