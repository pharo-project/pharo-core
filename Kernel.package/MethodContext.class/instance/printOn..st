printing
printOn: aStream
	self outerContext
		ifNil: [super printOn: aStream]
		ifNotNil:
			[:outerContext|
			 aStream nextPutAll: closureOrNil printString,' in '.
			 outerContext printOn: aStream]