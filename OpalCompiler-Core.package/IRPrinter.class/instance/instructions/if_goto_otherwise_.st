if: bool goto: seqNum1 otherwise: seqNum2

	stream nextPutAll: 'if: '.
	bool printOn: stream.
	stream nextPutAll: ' goto: '.
	seqNum1 printOn: stream.
	stream nextPutAll: ' else: '.
	seqNum2 printOn: stream.
