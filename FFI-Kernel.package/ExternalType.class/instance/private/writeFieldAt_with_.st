writeFieldAt: byteOffset with: valueName
	"Return a string defining the accessor to an entity 
	of the receiver type starting at the given byte offset. 
	Private. Used for field definition only."

	self isPointerType ifTrue:[
		^String streamContents:[:s|
			s nextPutAll:'handle pointerAt: ';
				print: byteOffset;
				nextPutAll:' put: ';
				nextPutAll: valueName;
				nextPutAll:' getHandle.']].

	self isAtomic ifFalse:[
		^String streamContents:[:s|
			s nextPutAll:'handle structAt: ';
				print: byteOffset;
				nextPutAll:' put: ';
				nextPutAll: valueName;
				nextPutAll:' getHandle';
				nextPutAll:' length: ';
				print: self byteSize;
				nextPutAll:'.']].

	^String streamContents:[:s|
		s nextPutAll:'handle ';
			nextPutAll: (AtomicSelectors at: self atomicType);
			space; print: byteOffset;
			nextPutAll:' put: ';
			nextPutAll: valueName].