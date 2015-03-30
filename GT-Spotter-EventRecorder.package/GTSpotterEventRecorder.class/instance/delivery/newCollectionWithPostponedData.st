newCollectionWithPostponedData
	^ postponedData 
			ifNil: [ OrderedCollection new ]
			ifNotNil: [ :aCollection | postponedData := nil. aCollection ]
	