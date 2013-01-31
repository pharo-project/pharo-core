running
run
	| stream |
	RBSmalllintChecker 
		runRule: (RBCompositeLintRule rules: rules)
		onEnvironment: environment.
	stream := FileDirectory default
		forceNewFileNamed: environment name , '-Lint.xml'.
	[ self generateOn: stream ]
		ensure: [ stream close ]