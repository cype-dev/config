set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME "$HOME/.config"

# Commands/Settings for login-shell
if status is-login
    # Set LS_COLORS
    eval (dircolors -c $XDG_CONFIG_HOME/dircolors/dircolors.conf)

    # Commands/Settings for graphical interface
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        set -gx QT_IM_MODULE ibus
        exec startx
    end
end
