drag and drop
dropMethod: aCollectionOfMethods inARow: aRow

	| newProtocol |
	
	newProtocol := self getCategories at: aRow.
	aCollectionOfMethods do: [:aMethod | self move: aMethod from: aMethod category to: newProtocol isCopy: false ].
	self selectedMethod: nil