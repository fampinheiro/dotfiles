function add_to_path
  if not contains $argv[1] $PATH
    set -gx PATH $argv[1] $PATH
  end
end
