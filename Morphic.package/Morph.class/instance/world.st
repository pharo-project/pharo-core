structure
world
	^owner isNil ifTrue: [nil] ifFalse: [owner world]