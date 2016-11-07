# Color ouput on OS X
alias ll="ls -alhG"

# SSH Keygen
alias ssh_github="eval \"$(ssh-agent -s)\" && chmod 400 ~/.ssh/*id_rsa && ssh-add ~/.ssh/github_id_rsa"
alias ssh_github-work="eval \"$(ssh-agent -s)\" && chmod 400 ~/.ssh/*id_rsa && ssh-add ~/.ssh/github-work_id_rsa"
alias ssh_gitlab="eval \"$(ssh-agent -s)\" && chmod 400 ~/.ssh/*id_rsa && ssh-add ~/.ssh/gitlab_id_rsa"