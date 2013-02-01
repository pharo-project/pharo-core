menu
openOnCurrentWorkspace

	CriticWorkspace exists
		ifTrue: [ self openOnWorkspace: CriticWorkspace current ]
		ifFalse: [ SelectPackageBrowser open ]