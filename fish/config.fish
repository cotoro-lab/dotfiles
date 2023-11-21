# if status is-interactive
# Commands to run in interactive sessions can go here
#

# ranger-cd
function ranger-cd
    # 一時ファイルを作成
    set temp_file (mktemp -t tmp.XXXXXX)

    # rangerを実行
    /usr/bin/ranger --choosedir="$temp_file" $argv; or pwd

    # 一時ファイルが存在し、かつ現在のディレクトリが一時ファイルに書かれているディレクトリと異なる場合
    if test -f "$temp_file"
        set selected_dir (cat $temp_file)
        if test "$selected_dir" != (pwd)
            cd $selected_dir
        end
    end

    # 一時ファイルを削除
    rm -f $temp_file
end

# open-pdf(only windows)
function open-pdf
    set current_dir (pwd)
    if test "$argv" != ""
        set file_path_win (wslpath -w "$current_dir/$argv")
        cmd.exe /c start msedge "" $file_path_win
    end
end

# open-excel(only windows)
function open-excel
    set current_dir (pwd)
    if test "$argv" != ""
        set file_path_win (wslpath -w "$current_dir/$argv")
        cmd.exe /c start excel "" $file_path_win
    end
end

# USER_Settings #######################################
# theme
# ------------------------------------------------
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# USER_ALIAS #######################################
# directory
# ------------------------------------------------
alias ran ranger-cd
alias cdhome 'cd ~'
alias cdnvim 'cd ~/.config/nvim/lua/'

# open setting file
# ------------------------------------------------
alias vimrc 'nvim ~/.vimrc'
alias bashrc 'nvim ~/.bashrc'
alias tmconf 'nvim ~/.tmux.conf'
alias fishconf 'nvim ~/.config/fish/config.fish'

# commit setting file
# ------------------------------------------------
alias bashcommit 'source ~/.bashrc'
alias fishcommit 'source ~/.config/fish/config.fish'
alias tmcommit 'tmux source-file ~/.tmux.conf'

# tmux
# ------------------------------------------------
alias tm tmux
alias tmlist 'tmux list-session'
alias tmname 'tmux a -t'
alias tmnew 'tmux new -s'
alias tmkill 'tmux kill-session -t'

# docker
# ------------------------------------------------
alias docker 'sudo docker'

# ls aliases
# ------------------------------------------------
alias la 'ls -A1'
alias ll 'ls -alF'
alias l 'ls -CF'

# other
# ------------------------------------------------
alias g 'grep -i -n -r'
alias clip 'xsel --clipboard --input'
alias pdf open-pdf
alias excel open-excel



# end
