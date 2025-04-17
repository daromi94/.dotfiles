safe_source() {
    local -r file_path="$1"

    if [[ -s "$file_path" ]]; then
        source "$file_path"
    else
        echo ".zshrc: $file_path: empty or missing" >&2
    fi
}

readonly ZSH_THEME='robbyrussell'
readonly plugins=(git)

safe_source "$HOME/.oh-my-zsh/oh-my-zsh.sh"
safe_source "$HOME/.sdkman/bin/sdkman-init.sh"
safe_source "$DOTFILES_DIR/zsh/.aliases"
