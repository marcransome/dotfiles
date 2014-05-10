function ll
    set os (uname)
    switch $os
        case Darwin
            ls -alpG $argv
        case Linux
            ls -alp --color=auto $argv
    end
end
