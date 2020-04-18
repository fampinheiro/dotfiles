is_ubuntu || return 1

setxkbmap -option ctrl:nocaps
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
