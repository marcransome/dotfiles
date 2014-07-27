function stab -d "Set the current iTerm tab colour"
    switch $argv[1]
        case green
            set rgb_values 168 203 79
        case orange
            set rgb_values 229 143 25
        case blue
            set rgb_values 102 163 246
        case purple
            set rgb_values 193 142 212
        case red
            set rgb_values 234 96 92
        case yellow
            set rgb_values 224 208 85
        case '*'
            if test (count $argv) -ne 3
                echo "usage: stab [ colour | red_value green_value blue_value ]"
                return 1
            end

            set rgb_values $argv[1] $argv[2] $argv[3]
    end

    echo -ne "\033]6;1;bg;red;brightness;$rgb_values[1]\a"
    echo -ne "\033]6;1;bg;green;brightness;$rgb_values[2]\a"
    echo -ne "\033]6;1;bg;blue;brightness;$rgb_values[3]\a"
end
