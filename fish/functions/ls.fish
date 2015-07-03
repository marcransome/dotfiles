function ls
    switch (uname)
        case Darwin
            command ls -FG $argv
        case Linux
            command ls -F --color=auto $argv
    end
end
