# don't run if the terminal isn't interactive
if [ -t 0 ]
then
  if [ $(git config --global user.email) == "EMAIL"  ]
  then
    echo "insert the email to set on global gitconfig"
    read email

    git config --global user.email $email
  fi
fi
