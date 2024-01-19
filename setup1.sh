cat > /.bashrc <<EOF
# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias lx='ls -la --color=auto'
alias rx='rm -rf'
alias ban='fail2ban-client set apache-badbots banip'
PATH=$PATH:$HOME/bin:~/.local/bin:/usr/local/bin
export PATH
export EDITOR=nano
echo ""
echo "************************************************"
echo "  NEW LOGIN PROCESSED - WELCOME TO server, $USER"
echo "************************************************"
echo ""
export NVM_DIR="/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
ln -s /.nvm/versions/node/v17.5.0/bin/node /usr/bin/node;
ln -s /.nvm/versions/node/v17.5.0/bin/npm /usr/bin/npm;
PATH=$PATH:/.nvm/versions/node/v17.5.0/bin
EOF
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source /.bashrc;
nvm install 17.5.0;
nvm use 17.5.0;
#cat /.bashrc;
#ls /.nvm/versions/node/v17.5.0/bin;
#echo "Check /usr/bin";
#ls /usr/bin;
#cp -r /.nvm/versions/node/v17.5.0/bin/* /usr/bin/;

