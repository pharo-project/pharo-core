uptoBranches: branches
	^ branches do: [ :branch | self uptoBranch: branch ]