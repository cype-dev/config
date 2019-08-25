function listoptional --description 'List packages that are only optionally required'
	pacman -Qqdtt $argv
end
