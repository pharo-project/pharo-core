icon
	"Answer a form with an icon to represent the receiver"
	|o|
	o := self operation.
	o isNil ifTrue: [^ Smalltalk ui icons smallJumpIcon].
	o isAddition ifTrue: [^ Smalltalk ui icons smallOkIcon].
	o isRemoval ifTrue: [^ Smalltalk ui icons smallCancelIcon].
	^ Smalltalk ui icons smallForwardIcon