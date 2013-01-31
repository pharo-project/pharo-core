set up
tearDown
	super tearDown.
	RBRefactoringManager instance release.
	(RBRefactoringManager classPool associationAt: #Instance
		ifAbsent: [RBRefactoringManager classPool associationAt: 'Instance']) 
			value: manager