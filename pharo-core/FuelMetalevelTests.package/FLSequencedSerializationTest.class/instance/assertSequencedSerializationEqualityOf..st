tests
assertSequencedSerializationEqualityOf: aCollectionToSerialize
			
	| aSerializer fileName aMaterializer materializedCollection |
	fileName := 'sequencedSerializationTest.fuel'.
	aSerializer := FLSerializer newDefault.
	aMaterializer := FLMaterializer newDefault.

	FileStream forceNewFileNamed: fileName do: [:aWriteStream |
		aWriteStream binary.
		aCollectionToSerialize do: [:anObject |
			 aSerializer serialize: anObject on: aWriteStream ]].
	
	FileStream oldFileNamed: fileName do: [:aReadStream |
		aReadStream binary.
		materializedCollection := OrderedCollection new.
		[aReadStream atEnd] whileFalse: [
			materializedCollection add: 
				(aMaterializer materializeFrom: aReadStream) root ]].
	
	self assert: aCollectionToSerialize = materializedCollection.