tests
testUndeclaredAssociation

	Smalltalk globals removeKey: #FLGlobalVariableForTesting ifAbsent: [].
	self assertSerializationIdentityOf: (Smalltalk globals associationOrUndeclaredAt: #FLGlobalVariableForTesting)..