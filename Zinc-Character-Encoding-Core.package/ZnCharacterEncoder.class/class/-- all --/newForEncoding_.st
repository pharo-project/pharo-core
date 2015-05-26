newForEncoding: string
	"Return a new character encoder object for an encoding described by string.
	Search for a subclass that handles it and delegate (subclassResponsibility)."
	
	| concreteSubclass encoding |
	encoding := string asLowercase.
	concreteSubclass := self subclasses 
		detect: [ :each | each handlesEncoding: encoding ] 
		ifNone: [ ^ self default ].
	^ concreteSubclass newForEncoding: encoding