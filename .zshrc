# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
parse_git_branch() {
  git branch 2>/dev/null | sed -n '/^\* /s/^\* \(.*\)/ (\1)/p'
}

# %n = username, %m = hostname, %c = cwd
export PS1='%n@%m %c '$(parse_git_branch)' $ '\

