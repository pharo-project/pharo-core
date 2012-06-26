context stack menu
restart
	"Proceed from the initial state of the currently selected context. The 
	argument is a controller on a view of the receiver. That view is closed."
	"Closing now depends on a setting (RestartAlsoProceeds class variable)"

	| ctxt noUnwindError |
	self okToChange ifFalse: [^ self].
	self isPostMortem ifTrue: [^ self].
	self checkContextSelection.
	ctxt := interruptedProcess popTo: self selectedContext.
	noUnwindError := false.
	ctxt == self selectedContext ifTrue: [
		noUnwindError := true.
		interruptedProcess restartTop; stepToSendOrReturn].
	self resetContext: ctxt.
	"Issue 3015 - Hernan"
	self isInterruptedContextATest ifTrue: [ self prepareTestToRunAgain ].	

	(self class restartAlsoProceeds and: [noUnwindError]) ifTrue: [self proceed].
