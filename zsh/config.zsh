#################################  HISTORY  #################################
# history
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ

# share .zshhistory
setopt inc_append_history   # 実行時に履歴をファイルにに追加していく
setopt share_history        # 履歴を他のシェルとリアルタイム共有する
setopt hist_ignore_dups     # 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_all_dups # 重複するコマンドは古い方を削除する

#################################  COMPLEMENT  #################################
# enable completion
autoload -Uz compinit && compinit

# 補完候補をそのまま探す -> 小文字を大文字に変えて探す -> 大文字を小文字に変えて探す
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

### 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''


### 補完侯補をメニューから選択する。
### select=2: 補完候補を一覧から選択する。補完候補が2つ以上なければすぐに補完する。
zstyle ':completion:*:default' menu select=2

### docker complement
fpath=(~/dotfiles/zsh/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
ZSH_DISABLE_COMPFIX=true

#################################  OTHERS  #################################
# automatically change directory when dir name is typed
setopt auto_cd

# ビープ音を鳴らさない
setopt no_beep

# 補完候補表示時にビープ音を鳴らさない
setopt nolistbeep

# disable ctrl+s, ctrl+q
setopt no_flow_control

# コマンドのスペルミスを指摘
setopt correct

# 補完キー連打で順に補完候補を自動で補完
setopt auto_menu

# starships theme config
export STARSHIP_CONFIG=$HOME/dotfiles/zsh/.config/starship.toml

#alias
alias ls='ls --color'
alias sz='source ~/.zshrc'
alias tns='tmux new-session \; source-file ~/dotfiles/.tmux.session.conf'

# nvim
export PATH="$PATH:/opt/nvim/"

#flyctl
export FLYCTL_INSTALL="/home/ritananashi/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
