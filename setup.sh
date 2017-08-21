# setup script for mac
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/SetupTools/Brew.sh

brew bundle --file=Brew/Brewfile
