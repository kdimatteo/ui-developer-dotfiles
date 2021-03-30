set -xU TEGRITY_API_KEY 'B6327488-98A8-4F0F-A54A-04BBF6C4B678'


alias paam "/projects/connect-paam"

# Unix
alias tlf "tail -f"
alias vi 'vi -u /usr/share/vim/vimrc'
alias lla "ls -lha"
alias resource ". ~/.bash_profile"
alias aliases "vim ~/dotfiles/alias.sh ; resource"
alias sudo "sudo ";
alias getdown "afplay ~/dotfiles/Sounds/get-down-on-it.wav"
alias ctu "afplay ~/dotfiles/Sounds/ctu.wav"
alias needyou "afplay ~/dotfiles/Sounds/need_you.wav"
alias ctuuu "ctu ; ctu ; ctu"
alias fuck "~/dotfiles/fuck"

# Ruby Gems
alias gi "gem install"
alias giv "gem install -v"

# Rails
alias rake "time bundle exec rake"
alias rkae "rake"
alias rkea "rake"
alias rspec "rspec"
alias r "rspec"
alias tmigrate "rake db:migrate ; rake db:migrate:redo ; rake db:test:prepare"

# Git
alias rebasemaster "git fetch ; git rebase origin/master"
alias gst "git status"
alias gs gst
alias umm "git unmerged"
alias pushit "git push origin HEAD"

#Connect PAAM
alias nombom "npm cache clear ; bower cache clean ; rm -rf node_modules bower_components ; npm install ; bower install"
alias nom nombom
alias ets "ember test --server"
alias es "ember serve --watch=polling"

function gitdelbr 
  git push origin --delete $argv[1]
  git branch -d $argv[1]
end

function gitreb 
  git fetch ; git rebase origin/$argv[1]
end

function fish_prompt --description 'Write out the prompt'
    # Just calculate these once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __git_cb
        set __git_cb "("(set_color brown)(git branch ^/dev/null | grep \* | sed 's/* //')(set_color normal)")"
    end

    switch $USER

        case root

        if not set -q __fish_prompt_cwd
            if set -q fish_color_cwd_root
                set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
            else
                set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            end
        end

        printf '%s@%s:%s%s%s%s# ' $USER $__fish_prompt_hostname "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" $__git_cb

        case '*'

        if not set -q __fish_prompt_cwd
            set -g __fish_prompt_cwd (set_color $fish_color_cwd)
        end

        printf '%s@%s:%s%s%s%s$ ' $USER $__fish_prompt_hostname "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" $__git_cb

    end
end

