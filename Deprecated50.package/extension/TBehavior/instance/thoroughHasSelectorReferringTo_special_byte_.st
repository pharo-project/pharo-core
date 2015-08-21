thoroughHasSelectorReferringTo: literal special: specialFlag byte: specialByte
	"Answer true if any of my methods access the argument as a 
	literal. Dives into the compact literal notation, making it slow but 
	thorough "
	self deprecated: 'use hasLiteralThorough:' on: ' 21 August 2015' in: 'Pharo5'.
	
	self methodsDo: [ :method |
		((method hasLiteralThorough: literal) or: [specialFlag and: [method scanFor: specialByte]])
			ifTrue: [^true]].
	^false