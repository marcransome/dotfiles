function ls
    switch (uname)
        case Darwin
            command ls -pG $argv
        case Linux
            command ls -p --color=auto $argv
    end
end
