# Load starship theme
# line 1: `starship` binary as command, from github release
# line 2: starship setup at clone(create init.zsh, completion)
# line 3: pull behavior same as clone, source init.zsh
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

zinit ice wait'!0'
zinit light z-shell/F-Sy-H

zinit light zsh-users/zsh-autosuggestions
bindkey '^ ' autosuggest-accept

zinit light paulirish/git-open

zinit light zsh-users/zsh-completions

zinit light babarot/enhancd
