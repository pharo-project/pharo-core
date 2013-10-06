icon
	"Answer a form with an icon to represent the receiver"
	|o|
	o := self operation.
	o isNil ifTrue: [^ Smalltalk ui icons changeEmptyIcon ].
	o isAddition ifTrue: [^ Smalltalk ui icons changeAddIcon ].
	o isRemoval ifTrue: [^ Smalltalk ui icons changeRemoveIcon ].
	^ Smalltalk ui icons changeUpdateIcon