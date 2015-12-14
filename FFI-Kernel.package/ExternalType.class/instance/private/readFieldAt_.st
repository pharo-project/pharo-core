readFieldAt: byteOffset
	"Return a string defining the accessor to an entity of the receiver type starting at the given byte offset. 
	Private. Used for field definition only."
	self isPointerType ifTrue:[
		referentClass == nil ifTrue:[
			^String streamContents:[:s|
				s nextPutAll:'^ExternalData fromHandle: (handle pointerAt: ';
					print: byteOffset;
					nextPutAll:') type: ExternalType ';
					nextPutAll: (AtomicTypeNames at: self atomicType);
					nextPutAll: ' asPointerType']].
		^String streamContents:[:s|
			s nextPutAll:'^';
				print: referentClass;
				nextPutAll:' fromHandle: (handle pointerAt: ';
				print: byteOffset;
				nextPutAll:')']].

	(self isAtomic) ifFalse:["structure type"
		^String streamContents:[:s|
			s nextPutAll:'^';
				print: referentClass;
				nextPutAll:' fromHandle: (handle structAt: ';
				print: byteOffset;
				nextPutAll:' length: ';
				print: self byteSize;
				nextPutAll:')']].

	"Atomic non-pointer types"
	^String streamContents:[:s|
		s nextPutAll:'^handle ';
			nextPutAll: (AtomicSelectors at: self atomicType);
			space; print: byteOffset].