removeObsoleteFalsePositiveOf: aMethod

	| set arrayString  |
	set := (self manifest perform: aMethod selector) asOrderedCollection.
	set := set select: [ :each | ((Smalltalk globals at: each first first) manifestReadOn:  (each first at: 2)) isDefined ].
	arrayString := self buildArrayString: set.
	self compileSelector: aMethod selector returnValue: arrayString
	