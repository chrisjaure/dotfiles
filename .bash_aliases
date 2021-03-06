alias ..="cd .."
alias c=clear

# Ubuntu-only.
if [[ "$(cat /etc/issue 2> /dev/null)" =~ Ubuntu ]]; then
	alias open=xdg-open
	
	# gvim global menu fix in ubuntu unity
	alias gvim="vim -c :gui"

	# Package management
	alias update="sudo apt-get -qq update && sudo apt-get upgrade"
	alias install="sudo apt-get install"
	alias remove="sudo apt-get remove"
	alias search="apt-cache search"
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi
