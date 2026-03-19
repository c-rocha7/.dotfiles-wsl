# --- Teclas de Atalho ---
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" kill-word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# --- Tema e Plugins (Interface) ---
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# --- Gerenciadores e Ferramentas ---
source <(fzf --zsh)
eval "$(~/.local/bin/mise activate zsh)"

# Atualiza o sistema e todas as runtimes do mise
mi-update-all() {
  sudo pacman -Syu mise
  mise upgrade
  mise install
  echo "🚀 Sistema e ferramentas atualizados!"
}

# --- Autocompletar e Syntax (Sempre depois do mise/fzf) ---
fpath+=/usr/share/zsh/site-functions
autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# --- Variáveis de Ambiente ---
export LANG=pt_BR.UTF-8
export LC_ALL=pt_BR.UTF-8

# --- Aliases ---
alias ls="eza --icons"
alias ll="ls -la"
alias la="ls -a"
alias bat="bat --style=auto"
alias ff="fastfetch"
alias sail="[ -f sail ] && sh sail || sh vendor/bin/sail"
alias y="yazi"
alias compile="cc -Wall -Wextra -Werror"
alias ..="cd .."
alias ...="cd ../.."

# --- Mise Shortcuts ---
alias mi="mise"
alias mi-i="mise install"
alias mi-u="mise upgrade"
alias mi-s="mise doctor"
alias mi-l="mise ls"
alias mi-clean="mise prune --dry-run"
alias mi-purge="mise prune -y"
