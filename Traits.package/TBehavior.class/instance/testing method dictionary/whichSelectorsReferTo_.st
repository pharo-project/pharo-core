whichSelectorsReferTo: literal 
	"Answer a Set of selectors whose methods access the argument as a
literal."

	| selectors special byte |
	
	"for speed we check the special selectors here once per class"
	special := Smalltalk 
		hasSpecialSelector: literal 
		ifTrueSetByte: [:b | byte := b].
	selectors := OrderedCollection new.
	self selectorsAndMethodsDo: 
		[:sel :method | ((method hasLiteral: literal) or: [special and: [method scanFor: byte]])
						ifTrue: [selectors add: sel]].
	^selectors

	"Rectangle whichSelectorsReferTo: #+."