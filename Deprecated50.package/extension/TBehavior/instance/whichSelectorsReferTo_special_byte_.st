whichSelectorsReferTo: literal special: specialFlag byte: specialByte
	"Answer a set of selectors whose methods access the argument as a literal."

	| who |
	
	self deprecated: 'use whichSelectorsReferTo:' on: ' 21 August 2015' in: 'Pharo5'.
	
	who := IdentitySet new.
	self selectorsAndMethodsDo: 
		[:sel :method | ((method hasLiteral: literal) or: [specialFlag and: [method scanFor: specialByte]])
						ifTrue: [who add: sel]].
	^ who