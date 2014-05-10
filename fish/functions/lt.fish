function lt
    set os (uname)
    switch $os
        case Darwin
            ls -alptG $argv
        case Linux
            ls -alpt --color $argv
    end
end
