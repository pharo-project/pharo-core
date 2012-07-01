stream-protocol
writeStream 
	self flag: #todo. "need a nicer abstraction here to keep a shared bytes without calling grownBy on every at:put:"
	^ WriteStream on: self from: 1 to: size