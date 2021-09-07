#!/bin/bash
passgen() {
	< /dev/urandom tr -dc '_A-Z-a-z-0-9!@#$%^&*()[];:,.<>/?|~' | head -c16
}
sshs() { ssh -t $* screen -d -R abrev ; }
into() { google-chrome http://intodns.com/"$1" ; }
vms()  { virt-manager --connect=qemu+ssh://root@${1?}/system ; }
ssl_domain() { 
	domain=$1
	port=${2:-443}
	echo | openssl s_client -connect $domain:$port -servername $domain 2>/dev/null | openssl x509 -noout -subject -issuer -dates -fingerprint
}
#hosts check
hosts() { 
	google-chrome `tail -n2 /etc/hosts | cut -d" " -f2-20 | awk '{print $1, $3, $5, $7, $9, $11, $13, $15, $17, $19}'` > /dev/null 2>&1 &
}
hc10() {
	google-chrome --incognito `tail -n10 /etc/hosts | cut -d" " -f2-20 | awk '{print $1}'` > /dev/null 2>&1 &
}
rdp() {
	# match billing format:	`rdp Administrator 69.16.198.49 63457`
	#4 & 5 are extra opts
	local user ip port opt1 opt2
	user=${1:-Administrator}
	ip=${2}
	port=${3:-3389}
	echo running "xfreerdp --plugin cliprdr $4 $5 -u ${user} ${ip}:${port} "
	xfreerdp --plugin cliprdr $4 $5 -u ${user} ${ip}:${port}
}
freerdp_keyrm() {
	# for xfreerdp removing conflicting keys
	sed -i /${1:?}/d  ~/.config/freerdp/known_hosts ;
}
sshrm () {
	if which gsed 2>/dev/null ; then
		gsed -i -e "/^${1}/d" ~/.ssh/known_hosts
	else
		sed -i -e "${1}d" ~/.ssh/known_hosts
	fi
}
colorz () {
	for i in {0..256}; do tput setaf $i; echo -n "$i ";  done
	tput init
	for i in {0..256}; do tput setab $i; echo -n "$i ";  done
	tput init
}
#export PATH="$PATH:/opt/node-v4.1.1-linux-x64/bin"

#set vim as the editor for crontab -e
export EDITOR="vim"
export VISUAL="vim"
#windows-y
alias dir="ls"
alias copy="cp"
alias del="rm"
alias deltree="rm -r"
alias move="mv"
alias attrib="chmod"
alias edit="pico"
alias chdir="cd"
alias mem="top"
alias search="grep"
alias pico="pico -w -z"

alias vi="vim"
alias vnc="vncviewer"
alias dm='du -am --max-depth=1'
alias cd..='cd ..'
alias mtr='mtr -t'
alias ssh-nc="ssh -o 'StrictHostKeyChecking=no'"
alias ccat='pygmentize -g'
alias sndate='echo -n `date +%Y%m%d%H`| xsel -b ; xsel -ob'
alias rdesktop='xfreerdp --plugin cliprdr -u administrator'
alias vncviewer='vncviewer -compresslevel 5 -quality 5'
alias digs='dig ANY +noall +answer'
alias mtr='mtr -t'
