safe_source() {
    local -r file_path="$1"

    [ -f "$file_path" ] && . "$file_path"
}

safe_source "$HOME/.sdkman/bin/sdkman-init.sh"
safe_source "$DOTFILES_DIR/zsh/.aliases"
