tearDown
	super tearDown.
	 
	(Smalltalk classNamed: #GTExampleOrganizer) 
		ifNotNil: [ :class | class instance resetResults ]