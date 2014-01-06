# silence greeting message
set fish_greeting

# set path ordering to favour homebrew 
set -x PATH /usr/local/bin /usr/local/sbin ~/bin /usr/local/opt/ruby/bin $PATH

# show current git branch in prompt
set __fish_git_prompt_color_branch yellow

# configure some convenient aliases
alias grep="grep --color=always"
