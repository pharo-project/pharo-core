proceed: aTopView 
	"Proceed from the interrupted state of the currently selected context. The 
	argument is the topView of the receiver. That view is closed."

	self okToChange ifFalse: [^ self].
	self isPostMortem ifTrue: [^ self].
	self checkContextSelection.
	self resumeProcess: aTopView