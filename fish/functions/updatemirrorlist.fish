function updatemirrorlist --description 'Update pacman mirrorlist'
	sudo reflector -l 10 --sort rate --save /etc/pacman.d/mirrorlist; and echo Mirrorlist updated $argv;
end
