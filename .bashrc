#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='\w $ '
PS1="\[\e[31m\]\w\[\e[0m\]\[\e[97m\]: \[\e[0m\]"

#Pretty LS
alias ls='eza --icons --color=always'
alias ll='eza -l --icons --color=always'
alias la='eza -la --icons --color=always'
alias lt='eza -T --icons --color=always'
# VIM TO NVIM
alias vim='nvim'
alias vi='nvim'
# RELOADS
alias waybar-reload='pkill waybar && hyprctl dispatch exec waybar'
# SUPPLIMENTARY
alias volume='pavucontrol'
# CLEANUPS
alias pacman-clear="sudo pacman -Rns $(pacman -Qdtq)"
alias yay-clear="yay -Rns $(yay -Qdtq)"
# NNN
alias nnn="nnn -e"
alias n="nnn"
# REAL GAMING
alias cdda="cataclysm"
alias cddat="cataclysm-tiles"
export EDITOR=nvim
export VISUAL=nvim
