tests-globals
testDontConsiderCustomGlobal
	"A custom global variable is not treated as global by Fuel, unless we explicitly specify this."
	
	| aPerson |
	aPerson := FLPerson new.
	Smalltalk globals at: #FLGlobalVariableForTesting put: aPerson.
	
	self deny: (self resultOfSerializeAndMaterialize: aPerson) == aPerson. 
