export DOTFILES_DIR="$HOME/.dotfiles"

# Local user binaries
export PATH="$PATH:$HOME/.local/bin"

# Custom binaries
export PATH="$PATH:$DOTFILES_DIR/bin"

# System hooks
readonly kernel_name=$(uname -s)

if [[ "$kernel_name" == "Darwin" ]]; then
    readonly brew_bin="/opt/homebrew/bin/brew"

    [ -f "$brew_bin" ] && eval "$($brew_bin shellenv)"
fi
