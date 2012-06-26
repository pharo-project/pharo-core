printing
printOn: stream
	super printOn: stream.
	stream nextPut: $(.
	stream nextPutAll: (self isRunning ifTrue: [ 'running' ] ifFalse: [ 'stopped' ]).
	self port ifNotNil: [ stream space; print: self port ].
	self interface ifNotNil: [ stream space; print: self interface ].
	stream nextPut: $)