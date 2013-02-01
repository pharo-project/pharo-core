private
removeObsoleteFalsePositiveOf: aMethod
	| set arrayString  |
	set := (manifestClass perform: aMethod selector) asOrderedCollection.
	set := set select: [ :each |((Smalltalk at: (each first first)) manifestReadOn:  (each first at:2))  isDefined ].
	arrayString := self buildArrayString: set.
	manifestClass class
		compile: aMethod selector asString , Character cr asString , '^ ' , arrayString
		classified: 'meta data'