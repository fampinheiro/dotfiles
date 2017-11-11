# entries beginning with space aren't added into history, and duplicate
# entries will be erased (leaving the most recent entry)
export HISTCONTROL="ignorespace:erasedups"
# give history timestamps
export HISTTIMEFORMAT="[%F %T] "
# lots o' history
export HISTSIZE=10000
export HISTFILESIZE=10000
