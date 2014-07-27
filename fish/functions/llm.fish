function llm
    switch (uname)
        case Darwin
            ls	-alpG $argv | more
        case Linux
            ls	-alp --color=auto $argv | more
    end
end
