# misc variables
function is_osx
  if test (uname -s) = 'Darwin'
    echo 1
  end
end