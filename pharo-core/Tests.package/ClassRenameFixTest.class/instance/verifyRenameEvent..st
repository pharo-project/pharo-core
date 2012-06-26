running
verifyRenameEvent: aRenamedEvent
	| renamedClass |
	self assert: aRenamedEvent isRenamed.
	renamedClass := aRenamedEvent item.
	self assert: (Smalltalk globals classNamed: newClassName) name = newClassName.
	self assert: renamedClass name = newClassName