function spd --description 'Save current directory as project directory'
	echo (pwd) > ~/.cpd $argv;
end
