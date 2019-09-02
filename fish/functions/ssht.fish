function ssht --description 'SSH wrapper that sets TERM variable and starts tmux'
	set TERM xterm-256color
	ssh -t $argv "tmux attach-session -t $USER || tmux new-session -s $USER"
end
