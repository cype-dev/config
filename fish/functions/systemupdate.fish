function systemupdate --description 'Update system packages'
	trizen -Syu --noconfirm $argv
end
