begin
    set --local AUTOJUMP_PATH $HOMEBREW_PREFIX/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end
