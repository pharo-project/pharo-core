actions
recompilePackage
	workingCopy package packageInfo methods
		do: [:ea | ea actualClass recompile: ea selector]
		displayingProgress: 'Recompiling...'