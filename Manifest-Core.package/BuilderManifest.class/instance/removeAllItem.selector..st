private
removeAllItem: aSet selector: selector
	| set arrayString |
	
	set := (manifestClass perform: selector) asOrderedCollection .
	
	set := set reject: [:each | |tmp|
		tmp :=  (Smalltalk at: (each first first)) manifestReadOn:  (each first at:2).
		aSet anySatisfy: [:fp | tmp =  fp asRingDefinition ]].	

	arrayString := self buildArrayString: set.
	
	manifestClass class 
		compile: (selector asString,  Character cr asString, '^ ',arrayString)
		classified: 'meta data'
	