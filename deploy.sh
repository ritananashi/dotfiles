#!/bin/bash
# 配置したい設定ファイル
dotfiles=(.zshrc .tmux.conf)
nvim=(.github/ doc/ lua/ .gitignore .stylua.tomol LICENSE.md README.md init.lua)

# .zshrc と .tmux.conf という設定ファイルのシンボリックリンクを
# ホームディレクトリ直下に作成する
for file in "${dotfiles[@]}"; do
        ln -svf ~/dotfiles/${file} ~/${file}
done

for file in "${nvim[@]}"; do
	ln -svf ~/dotfiles/nvim/kickstart.nvim/${file} ~/.config/nvim/${files}
done
