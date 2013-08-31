function jp -d "Open default editor with date prepended filename for jekyll"

	set title (date +"%Y-%m-%d")
        
        switch (count $argv)
                case 0
                        echo "No post title was specified."
                        return 1
                case 1
                        set title $title-$argv[1].md
                case \*
                        for arg in $argv
                                set title $title-$arg
                        end
                        set title $title.md
        end
        
        EDITOR $title
end
