scrollToTheLastOne
	|leftDelta rightDelta delta|
	self items isEmpty ifTrue: [ ^ self ].
	
	self band brickBounds: (self band brickBounds translateBy: (self band data)@0).
	
	rightDelta := self globalBounds right - self band globalBounds right.
	leftDelta := self globalBounds left - self band globalBounds left.
			
	"all visible, return"
	(leftDelta = 0  and: [ self items size <= self maxNumberOfSteps ]) ifTrue: [ ^ self ].
	
	delta := (self items size <= self maxNumberOfSteps) ifTrue: [leftDelta] ifFalse: [rightDelta].
	self band data: (self band data + delta).

	"self band brickBounds: (self band brickBounds translateBy: delta@0)."
	
	self
		glmAnimateBrickBounds: delta
		duration: 400
		callback: nil.
	
	