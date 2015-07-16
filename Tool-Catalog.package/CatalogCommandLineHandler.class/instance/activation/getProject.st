getProject
	| project |
	project := CatalogProvider new refresh projects 
		detect: [ :each | each name = self projectName ]
		ifNone: [ self error: ('No project {1} in catalog!' format: { self projectName }) ].

	self inform: 'Installing ', project name.
	project isAvailableForCurrentPharo ifFalse: [ 
		self warning: ('{1} is not tagged as available for current Pharo version. Trying to install anyway, but it can fail!' format: { self projectName }) ].
	project installVersion: self version.
	
	Smalltalk snapshot: true andQuit: true