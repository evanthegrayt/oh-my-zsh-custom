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
                    echo "* $box"
                else
                    echo "  $box"
                fi
            done
            ;;
        switch)
            case $current_vagrant_box in
                vagrant-ique)   box=vagrant-dotcom       ;;
                vagrant-dotcom) box=vagrant-ique         ;;
                *) echo "[CURRENT_VAGRANT_BOX] not set!" ;;
            esac
            echo $box > $cache
            echo "Switching to box [$box]"
            ;;
        *)
            [[ -n "$cmd" ]] && echo "Invalid argument [$cmd]"
            echo "Available arguments are:"
            echo "    up"
            echo "    ssh"
            echo "    halt"
            echo "    list"
            echo "    switch"
            ;;
    esac
}

