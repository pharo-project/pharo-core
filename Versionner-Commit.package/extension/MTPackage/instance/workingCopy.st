workingCopy
	^ MCWorkingCopy allManagers detect: [ :each | each packageName = self name ]