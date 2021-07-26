# Tmux Spotify Plugin

Fork of https://github.com/robhurring/tmux-spotify. Modified specifically for 
my configuration.

Uses osascript to query spotify for the active song.

### Usage

Here's the example in `.tmux.conf`:

    set -g status-right "#{get_music_status}"

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'mattwaggs/tmux-spotify'

Hit `prefix + I` to fetch the plugin and source it.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/mattwaggs/tmux-spotify ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/music.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

