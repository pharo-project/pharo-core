layoutStacked: aBrick in: newBounds
	| stackedBricks forward|

	self allowedBounds: newBounds.
	stackedBricks := self gatherStacked: aBrick.
	forward := true.
	
	"going from top to bottom"
	[ stackedBricks isEmpty not & forward] whileTrue: [ |brick|
		brick := stackedBricks first value.
		(self isVisible: brick) ifFalse: [
			(self isAbove: brick) ifTrue: [
				self layoutAllowedTop: brick.
				stackedBricks removeFirst.
			] ifFalse: [ forward := false ]
		] ifTrue: [ forward := false. self decreaseZindex: brick ] ].

	"going from bottom to top"
	stackedBricks reverseDo: [ :brick |
		(self isVisible: brick)
			ifFalse: [ self layoutAllowedBottom: brick ]
			ifTrue: [ self decreaseZindex: brick ] ].

	^ allowedBounds