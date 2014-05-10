function l
    set os (uname)
    switch $os
        case Darwin
            ls -apG $argv
        case Linux
            ls -ap --color=auto $argv
    end
end
