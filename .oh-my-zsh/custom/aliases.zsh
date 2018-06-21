alias open=xdg-open
alias aliases="$EDITOR $ZSH/custom/aliases.zsh"
alias vimrc="$EDITOR ~/.vimrc"
alias venv="source .venv/bin/activate"
alias mkvenv="python3 -m venv .venv && source .venv/bin/activate"
alias gcd='git checkout development'
alias here=gnome-terminal
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS,.venv} '

function commands() {
  awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}
alias topten="history | commands | sort -rn | head"

function _show_answers() {
	for f in *; do
		echo '-------------------- ' $f ' ----------------------'
		cat $f
	done
	echo '------------------------------------------'
}

alias show_answers="_show_answers | less"
