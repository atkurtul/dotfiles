set -s escape-time 0
set -g default-terminal "xterm-256color"
set -ga terminal-overrides ",*256col*:Tc"
setw -g mouse on

unbind C-b
set-option -g prefix C-a

bind v split-window -h -c '#{pane_current_path}' 
bind b split-window -v -c '#{pane_current_path}'

bind -r k select-pane -U
bind -r j select-pane -D
bind -r h select-pane -L
bind -r l select-pane -R

bind -r C-k resize-pane -U 5
bind -r C-j resize-pane -D 5
bind -r C-h resize-pane -L 5
bind -r C-l resize-pane -R 5

bind q kill-pane
