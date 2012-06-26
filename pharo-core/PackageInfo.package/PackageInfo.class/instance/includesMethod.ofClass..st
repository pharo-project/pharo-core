testing
includesMethod: aSymbol ofClass: aClass
	aClass ifNil: [^ false].
	^ self
		includesMethodCategory: ((aClass organization categoryOfElement: aSymbol)
										ifNil: [' '])
		ofClass: aClass