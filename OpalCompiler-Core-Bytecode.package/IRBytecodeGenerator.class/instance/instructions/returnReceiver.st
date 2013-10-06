returnReceiver
	bytes ifEmpty: [
		lastSpecialReturn := Message selector: #returnReceiver].

	self nextPut: (Bytecodes at: #returnReceiver).
