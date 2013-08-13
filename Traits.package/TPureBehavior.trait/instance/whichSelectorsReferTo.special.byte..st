testing method dictionary
whichSelectorsReferTo: literal special: specialFlag byte: specialByte
	"Answer a set of selectors whose methods access the argument as a literal."

	| who |
	who := IdentitySet new.
	self selectorsAndMethodsDo: 
		[:sel :method |
		((method hasLiteral: literal) or: [specialFlag and: [method scanFor: specialByte]])
			ifTrue:
				[((literal isVariableBinding) not
					or: [method literals allButLast includes: literal])
						ifTrue: [who add: sel]]].
	^ who