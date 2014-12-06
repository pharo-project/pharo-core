metadata: aDictionary

	aDictionary keysAndValuesDo: [ :eachKey :eachValue |
		self perform: (eachKey copyWith: $:) asSymbol with: eachValue ]