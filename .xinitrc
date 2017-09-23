# The motherfucking cursor
# xsetroot -cursor_name left_ptr &

# Start mate with compiz (Before)
#exec mate-session
#compiz --replace

# Set urxvt as default terminal (i3)
export TERMINAL="termite"

# gnome-terminal
eval `dbus-launch --sh-syntax`

# Set background image
sh ~/.fehbg &

xrdb ~/.Xresources

# Swap Caps with Escape
setxkbmap -option "caps:swapescape"

session=${1:-mate}

case $session in 
	mate 	) exec mate-session;;
	i3		) exec i3;;
	*		) exec $1;;
esac
