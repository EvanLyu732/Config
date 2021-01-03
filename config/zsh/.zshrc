#--------------------------------------------------
#oh my zsh import 
#--------------------------------------------------
export ZSH="/Users/evanlyu732/.oh-my-zsh" #change this line for other computer.

#--------------------------------------------------
#zsh theme
#--------------------------------------------------
ZSH_THEME="af-magic" #concise theme

#--------------------------------------------------
#plugin line
#--------------------------------------------------
plugins=(git 
         zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


#--------------------------------------------------
#vi mode begin
#--------------------------------------------------
#set vi mode 
bindkey -v

#bn means back to normal mode
bindkey bn vi-cmd-mode


# Use vim keys in tab complete menu: (from luke smith)
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


#--------------------------------------------------
#alias begin
#--------------------------------------------------
alias c='clear'
alias e='exit'
alias vi='$HOME/nvim-osx64/bin/nvim' #nvim 0.5-v
alias v='$HOME/nvim-osx64/bin/nvim'
alias brew='arch --x86_64 brew' #This is for Apple Slicon 

#--------------------------------------------------
#function begin
#--------------------------------------------------
#
#---show mode in term----------------------
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

#---ranger mode cd directory----------------------
function rangercd {
	local IFS=$'\t\n'
	local tempfile="$(mktemp -t tmp.XXXXXX)"
	local ranger_cmd=(
		command
		ranger
		--cmd="map Q chain shell echo %d > "$tempfile"; quitall"
	)
	
	${ranger_cmd[@]} "$@"
	if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
		cd -- "$(cat "$tempfile")" || return
	fi
	command rm -f -- "$tempfile" 2>/dev/null
}

bindkey -s '^o' 'rangercd\n'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/evanlyu732/.sdkman"
[[ -s "/Users/evanlyu732/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/evanlyu732/.sdkman/bin/sdkman-init.sh"
