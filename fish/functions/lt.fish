function lt
    switch (uname)
        case Darwin
            ls -alptG $argv
        case Linux
            ls -alpt --color $argv
    end
end
