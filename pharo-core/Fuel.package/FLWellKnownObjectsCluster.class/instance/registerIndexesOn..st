serialize/materialize
registerIndexesOn: aDictionary

	self objects do: [ :instance | aDictionary at: instance put: aDictionary size + 1 ].