thoroughWhichSelectorsReferTo: literal
	"Answer a set of selectors whose methods access the argument as a 
	literal. Dives into the compact literal notation, making it slow but 
	thorough "
	| selectors special byte |
	special := Smalltalk
		hasSpecialSelector: literal
		ifTrueSetByte: [ :value | byte := value ].
	selectors := IdentitySet new.
	self selectorsAndMethodsDo: [ :sel :method |
			((method refersToLiteral: literal) or: [special and: [method scanFor: byte]]) ifTrue: [selectors add: sel]].
	^ selectors