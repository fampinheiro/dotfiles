# don't run if the terminal isn't interactive
if [ -t 0 ] ; then
  echo "email:"
  read email

  git config --global user.email $email
fi
