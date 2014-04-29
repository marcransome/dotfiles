function rtab --description "Reset the current iTerm tab colour"
    echo -ne "\033]6;1;bg;*;default\a"
end
