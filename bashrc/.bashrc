function ranger-cd {
	temp_file="$(mktemp -t tmp.XXXXXX)"
	/usr/local/bin/ranger --choosedir="$temp_file" "${@:-$(pwd)}"
	test -f "$temp_file" &&
	if [ "$(cat -- "$temp_file")" != "$(echo -n `pwd`)" ]; then
		cd -- "$(cat "$temp_file")"
	fi
	rm -f -- "$temp_file"
}

# USER_ALIAS
alias ran='ranger-cd'
alias vi='vim'
alias bashcommit='source ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias cdhome='cd ~'
alias docker='sudo docker'
alias grep='grep -i -n -r'
