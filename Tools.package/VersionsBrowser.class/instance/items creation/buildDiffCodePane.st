buildDiffCodePane
	| old new |
	old := listIndex = changeList size
		ifTrue: [ '' ]
		ifFalse: [ changeList at: listIndex + 1 ].
	new := changeList at: listIndex ifAbsent: [ nil ].
	^ new
		ifNil: [ self buildDiffMorphFromOldString: '' toNewString: '' contextClass: nil ]
		ifNotNil: [ self buildDiffMorphFromOldString: old string toNewString: new string contextClass: new methodClass ]