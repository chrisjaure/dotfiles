# start an http server from current directory, port is optional
function server() {
	local PORT=${1:-8000}
	open "http://localhost:$PORT/"
	python -m SimpleHTTPServer $PORT
}