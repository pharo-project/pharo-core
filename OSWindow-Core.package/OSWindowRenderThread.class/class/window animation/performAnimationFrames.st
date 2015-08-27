performAnimationFrames
	| windows hasAnimated |
	
	" Copy the registered windows. "
	RegisteredWindowsMutex critical: [ 
		windows := RegisteredWindows copy.
	].

	" Try to animate them. "
	hasAnimated := false.
	windows do: [ :window |
		(window isValid) ifTrue: [ 
			hasAnimated := true.
			self doAnimationFrameFor: window.
		]
	].

	"Wait for another operation event or a time out."
	hasAnimated ifTrue:  [ 
		OperationAvailableSemaphore waitTimeoutMSecs: self animationStep.
	] ifFalse: [ 
		OperationAvailableSemaphore wait.
	]