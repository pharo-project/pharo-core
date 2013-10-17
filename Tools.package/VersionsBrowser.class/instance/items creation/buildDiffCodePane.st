buildDiffCodePane
	| old new |
		
	listIndex = changeList size
		ifTrue: [ old := '' ]
		ifFalse: [ old := changeList at: listIndex + 1 ].
	
	new := changeList at: listIndex ifAbsent: [ nil ].
	^ new
		ifNil: [ self buildDiffMorphFromOldString: '' toNewString:  '' contextClass:  nil ]
		ifNotNil: [
			self buildDiffMorphFromOldString: old string
				 toNewString: new string 
				contextClass:  new methodClass.].
