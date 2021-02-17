# ubuntu only
# abort if not ubuntu
is_ubuntu || return 1

sudo apt-get install build-essential curl file git