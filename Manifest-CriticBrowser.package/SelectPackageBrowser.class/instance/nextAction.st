private
nextAction

	| env package|	
		
	package := selectedModel listItems.
	env := RBPackageEnvironment new packages: package.
	SelectRuleBrowser openWithEnvironment: env removeTestCase: self addTestCaseClasses state.
	self delete
	
		
