function diff --description "Compare files with coloured output."
    colordiff -u $argv | less -R
end
