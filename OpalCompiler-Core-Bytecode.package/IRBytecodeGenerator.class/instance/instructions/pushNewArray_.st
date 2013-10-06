pushNewArray: size
	stack push.
	(size < 0 or: [size > 127]) ifTrue: [self error: 'The array size is out of range. Should be 0 - 127'].
	"138 	10001010 0kkkkkkk 	Push kkkkkkk into: (Array new: kkkkkkk)"
	
	self 
		nextPut: (Bytecodes at: #pushConsArray);
		nextPut: size.
	

