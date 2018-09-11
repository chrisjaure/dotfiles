sudo apt-get update
# docker requirements
sudo apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg2 \
	software-properties-common

# add docker gpg key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# add docker repo
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/debian \
	$(lsb_release -cs) \
	stable"

# add stretch-backports repo for tilix
sudo add-apt-repository \
	"deb http://ftp.debian.org/debian $(lsb_release -cs)-backports main"

# add fish gpg key
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:2/Debian_9.0/Release.key | sudo apt-key add -

# add fish repo
sudo add-apt-repository \
	'deb http://download.opensuse.org/repositories/shells:/fish:/release:/2/Debian_9.0/ /'

sudo apt-get update

#main utils
sudo apt-get install -y \
	bsdmainutils \
	man \
	fish \
	docker-ce

# backports
sudo apt-get -t "$(lsb_release -cs)-backports" install -y \
	tilix

# install fisher (package manager for fish shell)
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# install fnm (fish node manager, similar to nvm)
fisher fnm

# install latest node
fnm latest
