function l
    switch (uname)
        case Darwin
            ls -apG $argv
        case Linux
            ls -ap --color=auto $argv
    end
end
