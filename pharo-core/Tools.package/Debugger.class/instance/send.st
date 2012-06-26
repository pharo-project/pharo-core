context stack menu
send
	"Send the selected message in the accessed method, and take control in 
	the method invoked to allow further step or send."

	self okToChange ifFalse: [^ self].
	self isPostMortem ifTrue: [^ self].
	self checkContextSelection.
	interruptedProcess step: self selectedContext.
	self resetContext: interruptedProcess stepToSendOrReturn.
