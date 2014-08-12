printContentsOn: stream
	super printContentsOn: stream.
	stream << ' Connection Established '; nextPutAll: hostname; nextPut: $:; print: port; space. 
	address do: [ :each | stream print: each ] separatedBy: [ stream nextPut: $. ].
	stream space; print: duration; << 'ms '.