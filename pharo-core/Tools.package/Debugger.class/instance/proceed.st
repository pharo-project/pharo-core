context stack menu
proceed
	"Proceed execution of the receiver's model, starting after the expression at 
	which an interruption occurred."

	Smalltalk okayToProceedEvenIfSpaceIsLow ifTrue: [
		self proceed: self topView].
