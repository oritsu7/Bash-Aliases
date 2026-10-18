# shows the local ip address
alias localip='ip -br -c a'

# Show routing table
alias routes='ip -br route'

# Show listening TCP/UDP sockets
alias ports='sudo ss -tulnp'

# Show active network connections
alias connections='ss -tun'

# Show DNS resolver configuration
alias dnsconfig='resolvectl status'

# Test connectivity to Cloudflare DNS
alias pingtest='ping -c 4 1.1.1.1'

# Show network interfaces
alias interfaces='ip -br link'

# Show ARP/neighbour table
alias neighbours='ip neigh'

# Show Wi-Fi information
alias wifiinfo='iw dev'

# Show public IP address
alias publicip='curl -4 https://ifconfig.me'