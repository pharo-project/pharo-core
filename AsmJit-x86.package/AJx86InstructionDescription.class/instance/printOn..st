printing
printOn: aStream

	aStream nextPutAll: '(';
	nextPutAll: name printString;
	space;
	nextPutAll: group printString;
	space.

	"print o1Flags"
	o1Flags > 0 ifTrue: [ aStream nextPutAll: '"op1" 2r' , (o1Flags printStringBase: 2) ]
		ifFalse: [ aStream nextPutAll: '0'].
	aStream space.
	
	"print o2Flags"
	o2Flags > 0 ifTrue: [ aStream nextPutAll: '"op2" 2r' , (o2Flags printStringBase: 2) ]
		ifFalse: [ aStream nextPutAll: '0'].
	aStream space.

	"print opCodeR"
	aStream nextPutAll: '"R" '.
	opCodeR printOn: aStream.
	aStream space.
	
	"print opCode1"
	opCode1 > 0 ifTrue: [ 
		aStream nextPutAll: '"C1" '.
		aStream nextPutAll:  (self printDWord: opCode1 ) ]
		ifFalse: [ aStream nextPutAll: '0'].
		
	aStream space.

	"print opCode2"
	opCode2 > 0 ifTrue: [ 
		aStream nextPutAll: '"C2" '.
		aStream nextPutAll:  (self printDWord: opCode2 ) ]
		ifFalse: [ aStream nextPutAll: '0'].

	aStream space;
	nextPut: $) 
	