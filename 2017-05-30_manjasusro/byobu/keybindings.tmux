#hi
#set-option -g default-shell "/usr/bin/fish"
set-option -g default-shell "/usr/bin/zsh"
set -ga terminal-overrides ",xterm-termite:Tc"

bind -n M-t select-pane -L
bind -n M-s select-pane -D 
bind -n M-r select-pane -U
bind -n M-n select-pane -R

# Shift arrow to switch windows
bind -n M-i previous-window
bind -n M-e next-window

# LD from https://unix.stackexchange.com/questions/12032/create-new-window-with-current-directory-in-tmux
# Create new window / tab in same directory :
bind -n M-c new-window -c "#{pane_current_path}"
bind -n M-z split-window -c "#{pane_current_path}"
bind -n M-j split-window -h -c "#{pane_current_path}"


#bind -n M-T  resize +1	# shift-alt-up    | resize +1
#bindkey "^[[1;4s" resize -1	# shift-alt-down  | resize -1
#bindkey "^[[1;4t" resize -1	# shift-alt-left  | resize -1
#bindkey "^[[1;4n" resize +1	# shift-alt-right | resize +1
unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix
