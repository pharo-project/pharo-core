evaluating
valueWithArguments: anArray startingFrom: startIndex
	"Do the same as my parent, but make sure that all actions that do not 
	give errors are evaluated before resignaling the ones that gave errors 
	(giving the chance to clients to handle them)."

	"Note: I currently trap Halt,Error so that I am sure to get a Halt event in case of a Halt. This is being fixed in the exception system - when the fix is done it will be enough to capture only Error."

	| each answer |
	startIndex to: self size do: [:index |
		each := self at: index.
		each isReceiverOrAnyArgumentGarbage ifFalse: [
			[answer := each valueWithArguments: anArray]
				on: Halt, Error
				do: [:exc | 
						self valueWithArguments: anArray startingFrom: index + 1.
						exc pass]]].
	^ answer