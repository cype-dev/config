set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME "$HOME/.config"

# Commands/Settings for login-shell
if status is-login
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
