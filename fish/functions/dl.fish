function dl --description "Download one or more named files."

    for arg in $argv
        set commands $commands -O $arg
        echo $commands
    end
    
    curl $commands
end