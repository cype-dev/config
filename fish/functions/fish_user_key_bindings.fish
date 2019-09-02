function fish_user_key_bindings
    # Use vi-like keybindings
    set -g fish_key_bindings fish_vi_key_bindings
    # Use ctrl-x to accept autosuggestion
    bind -M insert \cx accept-autosuggestion
end
