testUniqueClassInDefinedClassesUsingAddClassDefinition
	| p a1 |
	p := self createNewPackageNamed: self p1Name.
	a1 := self createNewClassNamed: #A1InPAckageP1 inCategory: self p1Name.
	self assert: p definedClasses size = 0.
	p addClassDefinition: a1.
	self assert: p definedClasses size = 1.
	p addClassDefinition: a1.
	self assert: p definedClasses size = 1.
	p addClassDefinition: a1 class.
	self assert: p definedClasses size = 1.

