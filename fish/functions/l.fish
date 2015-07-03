function l
    switch (uname)
        case Darwin
            ls -aFG $argv
        case Linux
            ls -aF --color=auto $argv
    end
end
