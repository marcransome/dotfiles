function ll
    switch (uname)
        case Darwin
            ls -alpG $argv
        case Linux
            ls -alp --color=auto $argv
    end
end
