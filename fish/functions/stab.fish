function stab --description "Set the current iTerm tab colour using rgb values"
    echo -ne "\033]6;1;bg;red;brightness;$argv[1]\a"
    echo -ne "\033]6;1;bg;green;brightness;$argv[2]\a"
    echo -ne "\033]6;1;bg;blue;brightness;$argv[3]\a"
end
