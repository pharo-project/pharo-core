generating
newBaseline: versionString 
	self 
		generateBaseline: 'Kernel'
		version: versionString 
		imports:  #()
		groups:  self groupsKernel.
		
	self 
		generateBaseline: 'Core' 
		version: versionString 
		imports:  #('Kernel')
		groups: self groupsCore.
		
	self 
		generateBaseline: ''
		version: versionString 
		imports:  #('Kernel' 'Core')
		groups: self groupsEnvironment, self groupsTest
		defineGroups: (Dictionary 
			with: 'default'->(self groupsKernel, self groupsCore, self groupsEnvironment, self groupsTest))