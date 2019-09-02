function updatemirrorlist --description 'Update pacman mirrorlist'
    echo 'Updating Mirrorlist...'
	sudo reflector -l 10 --sort rate --save /etc/pacman.d/mirrorlist
	and echo 'Mirrorlist updated.'
end
