running
verifyRenameEvent: aRenamedEvent
	| renamedClass |
	renamedClass := aRenamedEvent item.
	self assert: (Smalltalk globals classNamed: newClassName) name = newClassName.
	self assert: renamedClass name = newClassName