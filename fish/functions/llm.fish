function llm
    switch (uname)
        case Darwin
            ls -alFG $argv | more
        case Linux
            ls -alF --color=auto $argv | more
    end
end
