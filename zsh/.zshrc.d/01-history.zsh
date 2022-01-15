# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
# default => 2000 /etc/zshrc
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
# default => 1000 /etc/zshrc
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# share history
setopt share_history

# historyコマンドは履歴に登録しない
setopt hist_no_store

# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space

# 余分な空白は詰めて記録
setopt hist_reduce_blanks
