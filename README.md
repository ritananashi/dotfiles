# dotfiles

### プラグイン追加
`zsh/plugins.zsh`に追加していく。  
追加後、`source ~/.zshrc`（エイリアス：`sz`）。
シンボリックリンク貼るときは`./deploy.sh`

### fast-syntax-highlightingのテーマ変更
`fast-theme ~/dotfiles/zsh/.config/catppuccin-frappe.ini`コマンドで適用

### 今入れてるプラグイン
[starship](https://github.com/starship/starship)  
[fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)  
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)  
[git-open](https://github.com/paulirish/git-open)  
[zsh-completions](https://github.com/zsh-users/zsh-completions)  
[enhan/cd](https://github.com/babarot/enhancd)  

### nvim管理
forkした[kickstart.nvim](https://github.com/ritananashi/kickstart.nvim/tree/61b041595614a0579ab2dfcb564ccfa028254fe6)をサブモジュール化して管理  
```bash
git clone git@github.com:ritananashi/dotfiles.git
cd dotfiles
git submodule update --init --recursive
```
`--init`で`.gitmodules`に登録されたサブモジュールの初期化  
`--recursive`でネストされたサブモジュールも再帰的に取得  
これをやらないとサブモジュールディレクトリが空のままになる。

- サブモジュールの更新  
`git submodule update --remote`

- サブモジュール内で編集  
サブモジュール内で`commit`、`push` → 親リポジトリ（dotfiles）で`commit`、`push`

#### nvim プラグイン管理
- プラグイン追加  
`lua/custom/plugins`配下に`.lua`ファイルで追加していく。  
`cp init.lua 新しいファイル.lua`で作成していく。  


