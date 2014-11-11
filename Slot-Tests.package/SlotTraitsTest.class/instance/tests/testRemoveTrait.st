testRemoveTrait
	"Tests that when removing a trait from a class, its methods are removed from the method dictionary."
	
	self make: [ :builder | 
		builder traitComposition: TOne ].
	
	aClass := self make: [ :builder | 
		builder traitComposition: {} ].
	
	self assert: TOne users isEmpty.
	self assert: TOne classTrait users isEmpty.
	self deny: (aClass canUnderstand: #one).
