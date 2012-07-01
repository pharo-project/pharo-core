running
testConsiderGlobal: anObject
	"With explicit specification of a symbol as global, both value and association keep identity."

	| globalAssociation |
	self analyzer considerGlobal: #FLGlobalVariableForTesting.

	Smalltalk globals at: #FLGlobalVariableForTesting put: anObject.
	globalAssociation := Smalltalk globals associationAt: #FLGlobalVariableForTesting.
	
	self assertSerializationIdentityOf: globalAssociation.
	self assertSerializationIdentityOf: globalAssociation value.