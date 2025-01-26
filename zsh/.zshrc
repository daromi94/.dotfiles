# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

readonly ZSH_THEME='robbyrussell'

readonly plugins=(git)

source "$ZSH/oh-my-zsh.sh"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"

readonly SDKMAN_INIT_PATH="$SDKMAN_DIR/bin/sdkman-init.sh"

if [[ -s "$SDKMAN_INIT_PATH" ]]; then
	source "$SDKMAN_INIT_PATH"
else
	echo "zshrc: $SDKMAN_INIT_PATH: missing init script" >&2
fi

# aliases
readonly ALIASES_PATH="$DOTFILES_DIR/zsh/.aliases"

if [[ -f "$ALIASES_PATH" ]]; then
	source "$ALIASES_PATH"
else
	echo "zshrc: $ALIASES_PATH: missing aliases file" >&2
fi
