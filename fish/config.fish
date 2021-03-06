# global exports
set -x GEM_HOME $HOME/.gem
set -x LANG en_GB.UTF-8

# system-specific exports
switch (uname)
    case Darwin
        set -x PATH /usr/local/bin /usr/local/sbin ~/bin (ruby -rubygems -e "puts Gem.user_dir")/bin $PATH
    case Linux      
        set -x PATH /usr/local/bin /usr/local/sbin ~/bin (ruby -rubygems -e "puts Gem.user_dir")/bin $PATH
end

# private variable exports
for file in (ls $HOME/.config/fish/private/*.fish)
    source $file
end

# default editor
set -x EDITOR vim

# git prompt defaults
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_char_stagedstate '∙'
set __fish_git_prompt_char_untrackedfiles '⋯'
set __fish_git_prompt_char_dirtystate '+'

