correspondingMcPackage
	| workingCopy |
	
	workingCopy := MCWorkingCopy allManagers detect: [ :wc | wc package name = name ].
	^workingCopy package