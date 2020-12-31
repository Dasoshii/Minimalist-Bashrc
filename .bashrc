#################################################
#   Keep this clean as much as possible         #
#   All configs must be placed in different     #
#   and specific files in ~/.config/bash        #
#################################################
#            Daso    December 31, 2020          #
#################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Importing configurations to .bashrc:
source ~/.config/bash/greeting          # Terminal startup msg
source ~/.config/bash/basics            # Basic configs to bash and PS1
source ~/.config/bash/functions
source ~/.config/bash/aliases
source ~/.config/bash/promptcolor       # Colors and text effects

# Greeting the user (If you like more the 24 hour format then replace parameter %I%M for %R)
echo -e "$greeting$l_blue $USER$end, now it's $yellow $(date +%I:%M) $am_pm$end"

# If you like a simple prompt that doesn't change at all let it like how it is.
PS1='[\u@\h] [\W]$ '
export PS1="[\u@\h] \[$(tput setaf 6)\][\W]\[$(tput setaf 2)\]$\[$(tput sgr0)\]\[$(tput sgr0)\] "

# If you like to change prompt by special dates like Xmas or your B-Day (MUST CONFIG YOUR BDAY) then uncomment:
# source ~/.config/bash/xdates