function cleanpaccache --description 'Clear pacman cache'
	sudo paccache -r; and sudo paccache -ruk0
end
