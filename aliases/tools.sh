# download music from yt (ytmp3 "url")
alias ytmp3='yt-dlp -x --audio-format mp3'

# Find files and directories by name
alias ff='find . -type f -iname'
alias fd='find . -type d -iname'

# Show disk space
alias disk='df -h'

# Top process eating CPU
alias pscpu='ps auxf | sort -nr -k 3'

# Show memory usage
alias mem='free -h'

alias c='clear'
alias ll='ls -lah --color=auto'
alias lu='du -sh * | sort -h'
alias lsd='ls -d */'
alias cx='chmod +x'
alias update='sudo apt update && sudo apt upgrade -y'
alias cleanup='sudo apt autoremove -y && sudo apt autoclean'

alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

alias reload='source ~/.bashrc'
alias aliases='nano ~/.bash_aliases' # change nano to 'code' or any other code editor.
# NOTE: If your linux doesn't have a ~/.bash_aliases file use ~/.bashrc instead or touch ~/.bash_aliases



