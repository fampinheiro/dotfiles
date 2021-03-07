fish_path=$(which fish)
if ! grep -q $fish_path /etc/shells
then
    sudo sh -c "echo $fish_path >> /etc/shells"
    chsh -s $fish_path
fi