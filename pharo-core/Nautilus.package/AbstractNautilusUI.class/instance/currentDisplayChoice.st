accessing
currentDisplayChoice

	^ currentDisplayChoice ifNil: [ currentDisplayChoice := self sourceCodeSymbol ]