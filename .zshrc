# Antigen

source /usr/local/share/antigen/antigen.zsh
source ~/.theme

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

source ~/.aliases

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jasonsinn/.sdkman"
[[ -s "/Users/jasonsinn/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jasonsinn/.sdkman/bin/sdkman-init.sh"
