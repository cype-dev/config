function removeorphans --description 'Remove orphaned packages'
	if count (pacman -Qdt) >/dev/null
		sudo pacman -Rns (pacman -Qdtq)
	else
		echo "No orphans to remove."
	end
end
