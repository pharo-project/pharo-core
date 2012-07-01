running
execute: aWorkingCopy
	aWorkingCopy packageInfo methods
		do: [ :each | each actualClass recompile: each selector ]