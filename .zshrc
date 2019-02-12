export TERM="xterm-256color"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator)
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_DIR_SHOW_WRITABLE=true

# Path to your oh-my-zsh installation.
  export ZSH=/home/daniel/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Example aliases
export ANDROID_HOME=/home/daniel/Android/Sdk
export PATH=$PATH:/home/daniel/Android/Sdk/tools:/home/daniel/Android/Sdk/platform-tools

alias clip="xclip -selection clipboard"
alias vi="vim"
alias start_server="sudo systemctl start nginx.service && sudo systemctl start mariadb.service && sudo systemctl start php-fpm.service"
alias stop_server="sudo systemctl stop  nginx.service && sudo systemctl stop  mariadb.service && sudo systemctl stop  php-fpm.service"
alias cat="bat"
alias clipimg="clip -o -selection clipboard | base64 -d > /tmp/tmpimg.jpg && feh /tmp/tmpimg.jpg"
