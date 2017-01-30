######################
### DESIGN CHANGES ###
######################

# activity in windows {
set-option -g visual-activity on
set-option -g visual-bell off
set-option -g visual-silence off
set-window-option -g monitor-activity on

set-option -g bell-action none

set -g default-terminal screen-256color
set-window-option -g xterm-keys on

# The panes {

set -g pane-border-bg colour250
set -g pane-border-fg colour250 
set -g pane-active-border-bg colour250
set -g pane-active-border-fg black

# pane number display

set -g display-panes-active-colour black
set -g display-panes-colour colour250


# The modes {
setw -g clock-mode-colour colour135
setw -g mode-attr bold
setw -g mode-fg colour196
setw -g mode-bg colour238

# }

# The messages colour {

set -g message-attr bold
set -g message-fg black #colour166
set -g message-bg colour245 
set -g message-command-fg black
set -g message-command-bg colour245
# }

# Activity in windows colour
set-window-option -g window-status-activity-fg colour240 
set-window-option -g window-status-activity-bg black
set-window-option -g window-status-activity-attr underscore

# status line
set-option -g status on
#set -g status-utf8 on
set -g status-justify centre
set -g status-position bottom
set -g status-interval 1		# update activity

# set color for status bar
set -g status-bg colour250 #default black
set -g status-fg black #blue
set -g status-attr dim

# set window title colours

set-window-option -g window-status-fg colour235
set-window-option -g window-status-bg colour250 #colour235
set-window-option -g window-status-attr dim 

# set window active title colours
set-window-option -g window-status-current-fg colour235 
set-window-option -g window-status-current-bg colour245
set-window-option -g window-status-current-attr bright

#setw -g window-status-bell-attr bold
#setw -g window-status-bell-fg colour255
#setw -g window-status-bell-bg colour1

#pane number color

# customize rifht status bar

set -g status-right-length 60
set -g status-right "#[fg=colour202]#S #I: #P #[fg=colour255,bg=colour235,bold] %d-%b-%Y | #[fg=colour255]%l:%M:%S #(data -u | awk '{print $4'}::"

# customize left status bar

set -g status-left-length 70
set -g status-left "#[fg=colour235]#h : #[fg=colour202]#(curl icanhazip.com)#[fg=yellow]#(ifconfig en0 | grep 'inet ' | awk '{print \" en0 \" $2}')#(ifconfig en1 | grep 'inet ' | awk '{print \" en1 \" $2}')#[fg=red]#(ifconfig tun0 | grep 'inet ' | awk '{print \" vpn \" $2}')"

# customize window status
setw -g window-status-current-format ' #I#[fg=colour235]:#[fg=colour235]#W#[fg=colour235]#F '
setw -g window-status-format ' #I#[fg=colour235]:#[fg=colour235]#W#[fg=colour235]#F '
