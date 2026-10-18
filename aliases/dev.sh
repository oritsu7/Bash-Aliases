# create react native app (reactexpo appname)
alias reactexpo='npx create-expo-app@latest'

# create and activates the virtual environment
alias pyvenv='python3 -m venv venv'
alias venv='source venv/bin/activate'

# List installed Python packages
alias piplist='python3 -m pip list'

# Remove Python cache directories
alias pycache-clean='find . -type d -name __pycache__ -prune -exec rm -rf -- {} +'

# Mysql server
alias status_mysql='sudo systemctl status mysql'
alias stop_mysql='sudo systemctl stop mysql'
alias start_mysql='sudo systemctl start mysql'

# Apache server
alias status_apache='sudo systemctl status apache2'
alias stop_apache='sudo systemctl stop apache2'
alias start_apache='sudo systemctl start apache2'

# git
alias gs='git status'
alias gss='git status -sb'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit -m'
alias go='git push -u origin'


