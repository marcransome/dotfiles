function fs --description "Show file sizes for specified directory."
    du -h -d0 $argv
end
