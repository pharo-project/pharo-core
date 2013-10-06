currentDisplayChoice

	^ currentDisplayChoice ifNil: [ currentDisplayChoice := self sourceCodeSymbol ]