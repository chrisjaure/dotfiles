unbind-key -n C-a
set -g prefix ^A,F12
bind a send-prefix

# new window
bind-key -n C-t new-window
# new split on top (alt+up)
bind-key -n M-Up split-window -v \; swap-pane -s :. -t :.- \; select-pane -t :.-
# new split on left (alt+left)
bind-key -n M-Left split-window -h \; swap-pane -s :. -t :.- \;  select-pane -t :.-
# new split on right (alt+right)
bind-key -n M-Right split-window -h
# new split on bottom (alt+down)
bind-key -n M-Down split-window -v

# Just click it
set-option -g mouse-select-pane on
set-option -g mouse-select-window on

# Scroll your way into copy mode (scrollback buffer)
# and select text for copying with the mouse
setw -g mode-mouse on
