private
applyRules

	|  packageCount nbPackage process rules|	
	rules := rulesModel getRoots first.
	rules resetResult.
	nbPackage := environment packages size.
	packageCount := 0.
	self updateTree.
	process := [  
		environment packages do: [:package ||  windowTitle |
			packageCount := packageCount + 1.
			windowTitle := String streamContents: [:s | 
				s 
					<< 'run rules on '
					<< package packageName
					<< ' ('
					<< packageCount asString
					<< '/'
					<< nbPackage asString
					<< ')' ].				
			self setTitle: windowTitle.
			checker runRules: rules onPackage: package ].
	
		self setTitle: 'Critics Browser'.
		self collectRulesData. 
		self updateTree.
		self registerToAnnouncements ] newProcess.

	process name: 'SmallLint'.
	process resume.