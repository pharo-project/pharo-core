testComplexModifyBaseline
	self createComplex11Baseline.
	MetacelloToolBox
		modifyVersion: '1.1-baseline'
		section: #common
		for: self configurationName asString
		repository: nil
		requiredProjects: #()
		packages: #('GoferFoo')
		dependencies: {'GeauxFaux' -> #('GoferFoo').}
		includes: #()
		files: #()
		repositories: #()
		preLoadDoIts: #()
		postLoadDoIts: #()
		supplyingAnswers: #()
		groups: #().
	self assert: ((Smalltalk at: self configurationName) sourceCodeAt: #baseline11:) = self complexBaseline11SourceString2