function ll
    switch (uname)
        case Darwin
            ls -alFG $argv
        case Linux
            ls -alF --color=auto $argv
    end
end
