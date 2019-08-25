function perfrec --description 'Profile executable'
	perf record --call-graph=dwarf $argv;
end
