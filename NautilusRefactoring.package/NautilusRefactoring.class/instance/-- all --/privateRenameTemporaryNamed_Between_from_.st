privateRenameTemporaryNamed: oldname Between: anInterval from: aMethod
	| name |
	name := (self
				request: 'Enter the new variable name:' 
				initialAnswer: oldname).
	name ifNil: [ ^ nil ].

	^ RBRenameTemporaryRefactoring
		model: environment
		renameTemporaryFrom: anInterval
		to: name
		in: aMethod methodClass
		selector: aMethod selector
