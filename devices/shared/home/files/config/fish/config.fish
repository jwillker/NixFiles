# Base16 Shell
#
# Automatically install fundle if not installed
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# Plugins
#fundle plugin 'tuvistavie/fish-theme-afowler'
fundle plugin 'yurifrl/fish-theme-afowler'
fundle plugin 'joehillen/ev-fish'
fundle plugin 'edc/bass'

fundle init

# start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
    exec startx -- -keeptty
  end
end

set fish_greeting ""

# Envs
set -gx DOT_FILES ~/DotFiles

source "$DOT_FILES/my.envs.sh"
source "$DOT_FILES/my.aliases.sh"
