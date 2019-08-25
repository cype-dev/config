set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME "$HOME/.config"

# Theme
set -g theme_nerd_fonts           yes
set -g theme_display_date         no
set -g theme_display_cmd_duration no

# Commands/Settings for login-shell
if status is-login
    # Use vi-like keybindings
    fish_vi_key_bindings

    # Use gpg-agent for ssh
    set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

    # Environment variables
    set -gx EDITOR "nvim"
    set -gx BROWSER "firefox"
    set -gx TERMINAL "termite"
    set -gx SXHKD_SHELL "/usr/bin/sh"
    set fish_user_paths $HOME/.bin $HOME/.cargo/bin

    # Set LS_COLORS
    eval (dircolors -c $XDG_CONFIG_HOME/dircolors/dircolors.conf)

    # Commands/Settings for graphical interface
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        set -gx QT_IM_MODULE ibus
        exec startx
    end
end
