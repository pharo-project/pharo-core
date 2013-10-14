testNestedLoad1

	| project version loader wc configurationName |
	configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
	gofer repository: self configurationRepository.
	gofer package: configurationName.
	gofer load.
	MetacelloConfigurationResource projectAttributes: #(#'level1_1' #'level2_2' #'level3_2' #'level2_1').
	project := (Smalltalk at: configurationName asSymbol) project.
	version := project version: '1.3.3-baseline'.
	loader := version load.
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-jf.1').
	wc := (GoferPackageReference name: 'GeauxBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GeauxBar.branch-lr.2').
	wc := (GoferPackageReference name: 'GeauxBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GeauxBeau-dkh.55').
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-lr.1').
	self 
		should: [ (GoferPackageReference name: 'GoferFaux') workingCopy ]
		raise: Error