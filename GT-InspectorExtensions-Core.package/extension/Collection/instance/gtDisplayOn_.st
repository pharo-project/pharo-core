gtDisplayOn: s
	self printNameOn: s.
	s 
		space;
		nextPut: $[;
		nextPutAll: self size asString;
		nextPutAll: (self size = 1 ifTrue: [' item'] ifFalse: [ ' items' ]);
		nextPut: $];
		space.
	s 
		nextPutAll: 
			((String streamContents: [ :stream | self printElementsOn: stream ]) truncateWithElipsisTo: 42)