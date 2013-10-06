icon
	"Answer a form with an icon to represent the receiver"
	|o|
	o := self operation.
	o isNil ifTrue: [^ Smalltalk ui icons emptyIcon ].
	o isAddition ifTrue: [^ Smalltalk ui icons smallAddIcon ].
	o isRemoval ifTrue: [^ Smalltalk ui icons removeIcon].
	^ Smalltalk ui icons smallForwardIconGray