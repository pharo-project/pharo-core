initialization
initialize
	super initialize.
	packages := MCWorkingCopy allManagers
		collect: [ :each | each packageInfo ]