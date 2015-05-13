method
	^ [ self selectedClass >> (self selectedMethodName ifNil: [ ^nil ]) asSymbol ] on: Error do: [  ]