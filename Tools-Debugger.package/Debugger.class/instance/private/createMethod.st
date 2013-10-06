createMethod
	"Should only be called when this Debugger was created in response to a
	MessageNotUnderstood exception. Create a stub for the method that was
	missing and proceed into it."
	
	| msg chosenClass |

	"Added due to error 3011 - Hernan"
	self selectedContext = self interruptedContext ifFalse: [ ^ UIManager default inform: 'Please select the #doesNotUnderstand: context'].
	
	msg := contextStackTop tempAt: 1.
	chosenClass := self
		askForSuperclassOf: contextStackTop receiver class
		toImplement: msg selector
		ifCancel: [^self].
	self implement: msg inClass: chosenClass.
