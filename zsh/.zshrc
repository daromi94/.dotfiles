safe_source() {
    local -r file_path="$1"

    if [[ -f "$file_path" && -s "$file_path" ]]; then
        . "$file_path"
    else
        echo ".zshrc: $file_path: file not found or empty" >&2
        return 1
    fi
}

# Oh My Zsh
readonly ZSH_THEME='robbyrussell'
readonly plugins=(git)

safe_source "$HOME/.oh-my-zsh/oh-my-zsh.sh"
safe_source "$HOME/.sdkman/bin/sdkman-init.sh"
safe_source "$DOTFILES_DIR/zsh/.aliases"
