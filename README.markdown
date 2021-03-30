# Dotfiles

Shortcuts to enable an easy workflow for UI projects. 

## Installation

First, clone the repository into your *home* folder. There are path dependencies (on `~/`) so its needs to be here.


Once you have the repository setup in your home folder, you'll need to add the following to your `profile` file (for example in bash it's `~/.bash_profile`).

```
for file in ~/dotfiles/*.sh; do
  [[ -r $file ]] && source $file;
done
```

Restart your terminal, and these commands will then be setup for you.

## Example Shortcuts

* `ll` - ls -lh
* `lla` - ls -lha
* `gst` - git status
* `pushit` - push to your current branch
* `rebasemaster` - rebase your local branch against origin/master
* `gitreb <branchname>` - rebase your local branch against origin/<branchname>
* `gitdelbr <branchname>` - delete remote and local branch <branchname>
* `timber` - list all remote branches, with last commit time and committer

