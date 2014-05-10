function ls
    set os (uname)
    switch $os
        case Darwin
            command ls -pG $argv
        case Linux
            command ls -p --color=auto $argv
    end
end
