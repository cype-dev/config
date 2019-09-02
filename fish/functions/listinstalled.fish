function listinstalled --description 'List manually installed packages'
	expac --timefmt='%Y-%m-%d-%T' '%l %n' (comm -23 (pacman -Qqe | sort | psub) \
        (pacman -Qqg base base-devel | sort | psub)) | sort -n | cut -d " " -f2
end
