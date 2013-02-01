menu
openOnCurrentWorkingConfiguration

	CriticWorkingConfiguration exists
		ifTrue: [ self openOnWorkspace: CriticWorkingConfiguration current ]
		ifFalse: [ SelectPackageBrowser open ]