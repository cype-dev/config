function systemupgrade --description 'Optimize pacman and update system packages'
	removeorphans; and updatemirrorlist; and systemupdate; and cleanpaccache
end
