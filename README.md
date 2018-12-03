# oh-my-zsh-custom
My 'custom' directory for `oh-my-zsh`

# Installation
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

# Features
This repo mostly contains enhancements to `zsh` itself, like better
tab-completion, terminal syntax highlighting, history substring search, and
autosuggestions. I do have some plugins that I've written, which are probably
only useful to me.

### cdc [directory]
I have a few directories in which I clone repositories. [This
function](https://github.com/evanthegrayt/cdc) will change directory to the
passed arguement, no matter which directory it's in, complete with
tab-completion for its arguments.

To use this feature, you need to export `REPO_DIRS` as an environmental
variable. It should be an array with absolute paths to the directories to
search.
```sh
export REPO_DIRS=($HOME/workflow $HOME/workflow/other)
```
Typing `cdc <TAB>` will list all available directories, and this list is built
on the fly; nothing is hard-coded.

I chose to make this function rather than editing `$CDPATH` because I don't like
changing the default bahavior of `cd`.

### vb [command]
This one is probably even less useful to anyone other than me, but I'll mention
it...

I have a couple of vagrant boxes, and instead of creating multiple aliases for
dealing with them, this function will change which box it's dealing with by
calling `vb switch`. From there, you can run `vb up` to bring up that box,
`vb ssh` to ssh to the machine, and a few other things.

This plugin also supports `zsh` tab-completion.

## Reporting bugs
This mostly just contains plugins as submodules, so there really shouldn't be
much to improve or fix, but if you find something, please [submit an
issue](https://github.com/evanthegrayt/oh-my-zsh-custom/issues/new).

