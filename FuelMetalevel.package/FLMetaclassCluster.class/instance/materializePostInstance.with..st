serialize/materialize
materializePostInstance: aMetaclass with: aDecoder

	| superclass instanceVariableNames format |
	superclass := aDecoder nextEncodedReference.
	instanceVariableNames := aDecoder nextEncodedString subStrings: ' '.
	format := aDecoder nextEncodedUint16.

	aMetaclass
		superclass: superclass 
		methodDictionary: MethodDictionary new 
		format: format;
		basicInstVarNames: instanceVariableNames.