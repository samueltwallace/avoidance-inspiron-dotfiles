#
#                                _ _                 _ _                
# ___  __ _ _ __ ___  _   _  ___| | |___      ____ _| | | __ _  ___ ___ 
#/ __|/ _` | '_ ` _ \| | | |/ _ \ | __\ \ /\ / / _` | | |/ _` |/ __/ _ \
#\__ \ (_| | | | | | | |_| |  __/ | |_ \ V  V / (_| | | | (_| | (_|  __/
#|___/\__,_|_| |_| |_|\__,_|\___|_|\__| \_/\_/ \__,_|_|_|\__,_|\___\___|
#                                                                       




(cat ~/.cache/wal/sequences &)

#task list

export PATH="/home/samueltwallace/.local/bin/:$PATH"
source $HOME/.aliases

# precmd() {
# 	print '\n'
# }

PROMPT='%(?.%F{green}.%F{red})%B%n%b@%M:%~%f'$'\n''%(?.%F{green}.%F{red})%! @ %* '$'\U27A4%f '


