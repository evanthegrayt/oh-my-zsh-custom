# oh-my-zsh-custom
My 'custom' directory for `oh-my-zsh`

## Installation
Clone the repository in your `oh-my-zsh` repository, making sure the directory
is named `custom`. Note that this directory already exists, so if you already
have custom plugins/settings, you'll need to make a backup of the directory
first, or just copy the files you want from here. Make sure to use the
`--recursive` option if you want the plugins I have installed; otherwise, why
would you be cloning this repository?

```bash
rm -rf $ZSH_CUSTOM
git clone --recursive https://github.com/evanthegrayt/oh-my-zsh-custom.git $ZSH_CUSTOM
```

## Features
This repo mostly contains enhancements to `zsh` itself, like better
tab-completion, terminal syntax highlighting, history substring search, and
autosuggestions.

### Plugins
- [CDC](https://github.com/evanthegrayt/cdc) - Quickly cd to repositories.
- [Vagrant Box Wrapper](https://github.com/evanthegrayt/vagrant-box-wrapper)
- [Fast Syntax Highlighting](https://github.com/zdharma/fast-syntax-highlighting)
- [History Search Multi Word](https://github.com/zdharma/history-search-multi-word)
- [OMZ-Git](https://github.com/tnwinc/omz-git) - Shorten branch name in prompt.
- [ZSH Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [ZSH History Substring Search](https://github.com/zsh-users/zsh-history-substring-search)
### Themes
- [Grayt ZSH Theme](https://github.com/evanthegrayt/grayt-zsh-theme)

## Reporting bugs
This mostly just contains plugins as submodules, so there really shouldn't be
much to improve or fix, but if you find something, please [submit an
issue](https://github.com/evanthegrayt/oh-my-zsh-custom/issues/new).

