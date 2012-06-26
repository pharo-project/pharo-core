private - accessing
iconNamed: aSymbol ifNone: aBlock
	^ (self respondsTo: aSymbol) ifFalse: [aBlock value] ifTrue: [self perform: aSymbol]