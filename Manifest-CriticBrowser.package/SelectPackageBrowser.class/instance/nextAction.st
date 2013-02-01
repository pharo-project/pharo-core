private
nextAction

	| env package|	
	package := (selectedModel listItems) collect: [ :each | each package packageSet ].
	env := RBPackageEnvironment new packages: package.
	SelectRuleBrowser openWithEnvironment: env.
	self delete
	
		
