private
applyRules
	|  packageCount nbPackage process rules|
	
	rules := rulesModel getRoots first.
	rules resetResult.
	
	nbPackage := environment packages size.
	packageCount := 0.
	self updateTree.
	process := [  
		environment packages do: [:package |
			packageCount := packageCount + 1.
			self setTitle: 'run rules on ', package packageName, ' (',packageCount asString, '/', nbPackage asString ,')'  .
			checker runRules: rules onPackage: package.
			
			]. 	
		self setTitle: 'Critics Browser'.
		self initFPTOCount. 
		"rulesModel getRoots first sort: [:r1 :r2 |
				(checker defectLikeHoodOf: r1) > (checker defectLikeHoodOf: r2)]."
		self updateTree.
			self registerToAnnouncements.
	]
		newProcess.
	process name: 'SmallLint'.
	process resume.
	
	
	
	