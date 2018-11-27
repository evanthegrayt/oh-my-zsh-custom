### cdc [directory]
I have a few directories in which I clone repositories. This function will
change directory to the passed arguement, no matter which directory it's in,
complete with tab-completion for its arguments.

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

