context stack menu
doStep
	"Send the selected message in the accessed method, and regain control 
	after the invoked method returns."
	
	| currentContext newContext |
	self okToChange ifFalse: [^ self].
	self isPostMortem ifTrue: [^ self].
	self checkContextSelection.
	currentContext := self selectedContext.
	newContext := interruptedProcess completeStep: currentContext.
	newContext == currentContext ifTrue: [
		newContext := interruptedProcess stepToSendOrReturn].
	self contextStackIndex > 1
		ifTrue: [self resetContext: newContext]
		ifFalse: [newContext == currentContext
				ifTrue: [self changed: #contentsSelection.
						self updateInspectors]
				ifFalse: [self resetContext: newContext]].
