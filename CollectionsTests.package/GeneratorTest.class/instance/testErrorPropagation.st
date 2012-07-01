testing
testErrorPropagation
	"Ensure that errors in the generator block are properly propagated"
	| generator |
	self shouldnt:[generator := Generator on: [ :g | g yield: 1. g error: 'yo']] raise: Error.
	self should:[generator next] raise: Error.
