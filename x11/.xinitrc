# ~/.xinitc: Processes to run every time xorg is launched

# Load the ~/.Xresources file
xrdb -merge ~/.Xresources

# Set the dpi mode
xrandr --output eDP1 --scale 1x1 --dpi 220

# Set the delay before autorepeat starts
#           Delay(ms) Repeats/second
xset r rate 200       20

# Launch i3
exec i3
