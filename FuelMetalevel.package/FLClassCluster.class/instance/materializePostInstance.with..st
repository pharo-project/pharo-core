serialize/materialize
materializePostInstance: aClass with: aDecoder

	| superclass category name instanceVariableNames format |
	superclass := aDecoder nextEncodedReference.
	category := aDecoder nextEncodedReference.
	name := aDecoder nextEncodedReference.
	format := aDecoder nextEncodedReference.
	instanceVariableNames := aDecoder nextEncodedString subStrings: ' '.

	aClass 
		superclass: superclass;
		setFormat: format;
		setName: name;
		basicInstVarNames: instanceVariableNames;
		basicCategory: category; 
		methodDict: MethodDictionary new.
		