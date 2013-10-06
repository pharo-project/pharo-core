setUp
	| assoc |
	super setUp.
	assoc := RBRefactoringManager classPool associationAt: #Instance
				ifAbsent: [RBRefactoringManager classPool associationAt: 'Instance'].
	manager := assoc value.
	assoc value: nil.
	model := RBNamespace new