function add_to_path
  if not contains $argv[1] $PATH
    set -gx PATH $argv[1] $PATH
  end
end

set -gx VOLTA_HOME $HOME/.volta
add_to_path $VOLTA_HOME/bin
