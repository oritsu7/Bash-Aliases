# weather <city name>
weather(){
    curl wttr.in/$1
}

# make directory and cd into it
mkcd() {
    mkdir -p -- "$1" && cd -- "$1"
}

# Searches the command history to find commands
search() {
    if [[ $# -eq 0 ]]; then
        echo "Usage: search <command>"
        return 1
    fi
    history | grep -i --color=auto -- "$*"
}

# Text Replace
txtrep(){
    if [[ $# -ne 3 ]]; then
        echo "Usage: txtrep <old> <new> <file>"
        return 1
    fi
    if [[ ! -f "$3" ]]; then
        echo "Error: File '$3' not found."
        return 1
    fi
    sed -i "s/$1/$2/g" "$3"
}

# get package
getpac(){
    if [ $1 -eq 1 ]; then
        sudo apt install "${@:2}" -y
    elif [ $1 -eq 2 ]; then
        sudo snap install "${@:2}"
    else
        echo "Usage : getpac 1|2 packages"
    fi
}

# Create python server
pyserver() {
    local port="${1:-8000}"
    python3 -m http.server "$port"
}

portcheck() {
    if [[ $# -ne 1 ]]; then
        echo "Usage: portcheck <port>"
        return 1
    fi
    sudo ss -ltnp "sport = :$1"
}

