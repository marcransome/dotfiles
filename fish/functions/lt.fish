function lt
    switch (uname)
        case Darwin
            ls -alFtG $argv
        case Linux
            ls -alFt --color $argv
    end
end
