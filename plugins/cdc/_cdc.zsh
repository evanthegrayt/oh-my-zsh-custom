#compdef cdc

_cdc_repo_list() {
    local dir

    for dir; do
        cd $dir
        ls -d */ | tr -d "/"
    done
}

_arguments "1: :($( _cdc_repo_list ${REPO_DIRS[@]} ))"

