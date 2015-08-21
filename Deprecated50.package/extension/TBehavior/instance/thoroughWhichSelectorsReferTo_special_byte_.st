thoroughWhichSelectorsReferTo: literal special: specialFlag byte: specialByte
	"Answer a set of selectors whose methods access the argument as a 
	literal. Dives into the compact literal notation, making it slow but 
	thorough "
	| selectors |
	self deprecated: 'use thoroughWhichSelectorsReferTo:' on: ' 21 August 2015' in: 'Pharo5'.
	
	selectors := IdentitySet new.
	self selectorsAndMethodsDo: [ :sel :method |
			((method refersToLiteral: literal) or: [specialFlag and: [method scanFor: specialByte]]) ifTrue: [selectors add: sel]].
	^ selectors