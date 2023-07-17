#! /bin/bash
# bashrcExcerpts.sh
#
# Drew Vollmer 2023-07-17

# # Set bash prompt settings: first define functions for git status
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

# Now declare prompt format
export PS1="\[\033[01;32m\]\u@\h \[\033[01;36m\]\W \$(parse_git_branch) \[\033[00m\]$ "
