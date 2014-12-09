scrollByKeyboard: anEvent
	|velocity|
	
	(self isKeyboardScrollEvent: anEvent) ifFalse: [^ self ].
	velocity := self calculateVelocity: anEvent.
	
	"keycode 30 is Event direction = #up"
	anEvent keyValue = 30 ifTrue: [ self scrollUp: velocity ].
	"keycode 31 is Event direction = #down"
	anEvent keyValue = 31 ifTrue: [ self scrollDown: velocity ].
	
	scrollPosition := band brickBounds top.
	
	self update.
	self changed