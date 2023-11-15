function ranger-cd {
	temp_file="$(mktemp -t tmp.XXXXXX)"
	/usr/local/bin/ranger --choosedir="$temp_file" "${@:-$(pwd)}"
	test -f "$temp_file" &&
	if [ "$(cat -- "$temp_file")" != "$(echo -n `pwd`)" ]; then
		cd -- "$(cat "$temp_file")"
	fi
	rm -f -- "$temp_file"
}

# USER_ALIAS #######################################
# directory -----------------------------------
alias bashcommit='source ~/.bashrc'
alias ran='ranger-cd'
alias cdhome='cd ~'

# open setting file -----------------------------
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'

# tmux --------------------------------
alias tm='tmux'
alias tmlist='tmux list-session'
alias tmback='tmux a -t'
alias tmnew='tmux new -s'
alias tmkill='tmux kill-session -t'

# docker -----------------------------------
alias docker='sudo docker'

# other ------------------------------------
alias g='grep -i -n -r'
alias clip='xsel --clipboard --input'


