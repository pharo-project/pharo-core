preventOverscrolling

	self band subbricks isEmpty ifTrue: [ ^ self ].

	((self getIndex: self band firstSubbrick) = 1) ifTrue: [
		(self band brickBounds origin y > self band firstSubbrick brickBounds top) ifTrue: [
			self band brickBounds: (self band brickBounds translateBy: (0@ self band brickBounds origin y) negated). ^ self update ] ].
	
	((self getIndex: self band lastSubbrick) = self adaptor count) ifTrue: [
		(((self band brickBounds corner y) < self height) and: [ (self isVisible: self band firstSubbrick) not ]) ifTrue: [
			self band brickBounds: (self band brickBounds translateBy: (0@ (self height - self band brickBounds corner y))). ^ self update ] ].