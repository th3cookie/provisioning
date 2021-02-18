# Add home binary dir to PATH
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

# SSH Stuff
pgrep ssh-agent &> /dev/null || eval `ssh-agent`
ssh-add ~/.ssh/sami-openssh-private-key.ppk &> /dev/null
ssh-add ~/.ssh/SShakir-openssh-private-key &> /dev/null
clear

# If you are using WSL, add this instead of above:
pkill ssh-agent
if ! pgrep ssh-agent > /dev/null; then
  rm -f /tmp/ssh-auth-sock
  eval "$(ssh-agent -s -a /tmp/ssh-auth-sock)"
  ssh-add ~/.ssh/id_rsa
  ssh-add ~/.ssh/id_rsa_work
else
  export SSH_AUTH_SOCK=/tmp/ssh-auth-sock
fi
clear

# Shell prompt layout
export PS1="[\[$(tput sgr0)\]\[\033[38;5;203m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;119m\]\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"

