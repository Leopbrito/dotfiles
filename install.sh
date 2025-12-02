magenta() {
	MAGENTA="\033[35m"
	RESET="\033[0m"
	echo -e "${MAGENTA}$1${RESET}"
}

magenta  "Starting terminal configuration..."

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt install git -y
fi

magenta "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

magenta "Installing git"
brew install git

magenta "Installing git-delta"
brew install git-delta

magenta "Installing moor"
brew install moor

magenta "Installing yadm"
brew install yadm

magenta "Installing gh"
brew install gh

magenta "Installing zsh"
brew install zsh

magenta "Installing Starship"
brew install starship

magenta "Installing zsh-autosuggestions"
brew install zsh-autosuggestions

magenta "Installing zsh-syntax-highlighting"
brew install zsh-syntax-highlighting

magenta "Installing eza"
brew install eza

magenta "Installing nvm"
brew install nvm

magenta "Installing jenv"
brew install jenv

magenta "Installing yq"
brew install yq

magenta "Installing netcat"
brew install netcat

if [[ -n "$BASH_VERSION" ]]; then

	magenta "Making Zsh the default shell"
	chsh -s $(which zsh)

	magenta "Getting dotfiles config"
	yadm clone https://github.com/Leopbrito/dotfiles.git

	zsh
fi
