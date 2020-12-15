#
#                                _ _                 _ _                
# ___  __ _ _ __ ___  _   _  ___| | |___      ____ _| | | __ _  ___ ___ 
#/ __|/ _` | '_ ` _ \| | | |/ _ \ | __\ \ /\ / / _` | | |/ _` |/ __/ _ \
#\__ \ (_| | | | | | | |_| |  __/ | |_ \ V  V / (_| | | | (_| | (_|  __/
#|___/\__,_|_| |_| |_|\__,_|\___|_|\__| \_/\_/ \__,_|_|_|\__,_|\___\___|
#                                                                       




(cat ~/.cache/wal/sequences &)


export PATH="/home/samueltwallace/.local/bin/:$PATH"
source $HOME/.aliases

 precmd() {
 	print '\n'
 }

PROMPT='%F{green}%B%n%b@%M:%~%f'$'\n\n''%(?.%F{green}.%F{red})%! @ %* '$'\U22EF%f '

# functions

function search() {
	firefox --search "$@"
}

function cz() {
	local DIR="$(find **/ | fzf --reverse --height=15)"
	if [[ -n "$DIR" ]]; then
		cd $DIR && ls --color=auto -1
	fi
}

function ed() {
	if [[ -n "$@" ]]; then
		nvim -u $HOME/.config/nvim/general.vim $@
	else
		nvim -u $HOME/.config/nvim/general.vim $(fzf --reverse --height=15)
	fi
}
