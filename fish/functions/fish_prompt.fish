function fish_prompt
    set last_status $status
    printf '%s@%s ' (whoami) (hostname -s)
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal
    printf '%s' (__fish_git_prompt)
    printf '> '
    set_color normal
end
