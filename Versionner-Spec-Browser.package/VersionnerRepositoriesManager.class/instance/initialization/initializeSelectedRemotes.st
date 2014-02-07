initializeSelectedRemotes
	| workingCopy |
	
	workingCopy := MCWorkingCopy allManagers detect: [ :wc | wc package name = packageName ].
	remotesUI selectedRemotes: workingCopy repositoryGroup repositories.
	remotesUI initializeWidgets.
	remotesUI initializePresenter
