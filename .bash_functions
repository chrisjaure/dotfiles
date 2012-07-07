# start an http server from current directory, port is optional
function server() {
	local PORT=${1:-8000}

	if [ "$TERM" == "screen" ]; then
		tmux rename-window "server: $(basename `pwd`)"
	fi

	python -m SimpleHTTPServer $PORT
	open "http://localhost:$PORT/"
}