# setopt PROMPT_SUBST

# if [ "$PROMPT" != "" ]; then
#     git_branch() {
#         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#     }
#     git_color() {
#         [[ -n $(git status --porcelain=v2 2>/dev/null) ]] && echo red || echo green
#     }
#     PROMPT='%F{$(git_color)}$(git_branch)%f %F{cyan}%c%f $ '
# fi

# direnv :環境変数をディレクトリ毎に設定
export EDITOR=vim
eval "$(direnv hook zsh)"

# rbenv
eval "$(rbenv init -)"

# nodeenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# iterm shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# rg :ripgrep 高速で、ファイルの中身から文字列を検索する
# --files :ファイルのみ, --hidden:隠しファイルも含める, --glob :.gitを含めない
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
# --height :ターミナルの40%, --reverse :逆順, --border :枠で囲む
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
source ~/.fzfrc

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

# 補完
zinit light zsh-users/zsh-autosuggestions
# シンタックスハイライト
zinit light zdharma/fast-syntax-highlighting
# クローンしたGitディレクトリで、`git open` を実行するとブラウザでGitHubが開く
zinit light paulirish/git-open
# iTerm2を使っている場合に、コマンド `tt タブ名` でタブ名を変更できる
zinit light gimbo/iterm2-tabs.zsh
# Gitの変更状態がわかる ls。ls の代わりにコマンド `k` を実行するだけ。
# k -> kk
zinit light supercrabtree/k
# 補完を強化
zinit light zsh-users/zsh-completions
# jump quickly to directories that you have visited frequently in the past, or recently
zinit light agkozak/zsh-z
# ターミナルのディレクトリ移動を高速化
zinit light b4b4r07/enhancd
# gitディレクトリのroot	に移動
zinit light mollifier/cd-gitroot
# プロンプトテーマ :pure
zinit light sindresorhus/pure

# 途中まで打ちカーソル上下で補完を切り替えれる
# zinit light zsh-users/zsh-history-substring-search
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# historyを共有
setopt share_history
# タブ補完する際、大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# hook chpwd :カレントディレクトリが変更したとき
function chpwd() { ls -FG }

alias gwww='gcc -Wall -Wextra -Werror'
alias norm="~/.norminette/norminette.rb"
alias normr='~/.norminette/norminette.rb -R CheckForbiddenSourceHeader'
alias norm_git="git ls-files | xargs ~/.norminette/norminette.rb"
alias normr_git='git ls-files | xargs ~/.norminette/norminette.rb -R CheckForbiddenSourceHeader'

alias ls='ls -FG'
alias ll='ls -alFG'
alias c='clear'
alias m='mkdir'
alias fn='find 2>/dev/null'
alias t='tar -xvf'
alias tgz='tar -zxvf'
alias txz='tar -Jxvf'
alias tbz='tar -jxvf'

alias -g C='| pbcopy'
alias -g G='| grep --color=auto'
alias -g H='| head'
alias -g L='| less --tabs=4 -RFX'
alias -g T='| tail'
alias -g W='| wc -l'
alias -g X='| xargs'

alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'
alias d='docker'
alias dco='docker-compose'
alias k='kubectl'
alias rm='gomi'
alias cdu='cd-gitroot'
