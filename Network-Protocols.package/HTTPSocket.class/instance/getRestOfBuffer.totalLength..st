receiving
getRestOfBuffer: beginning totalLength: length
	"Reel in a string of a fixed length.  Part of it has already been received.  Close the connection after all chars are received.  We do not strip out linefeed chars. 
	If length is nil, read until connection close.  Response is of type text, not binary."

	| buf response bytesRead |
	length ifNil: [^ self getRestOfBuffer: beginning].
	buf := String new: length.
	response := RWBinaryOrTextStream on: buf.
	response nextPutAll: beginning.
	buf := String new: length.

	[(response position < length) & (self isConnected | self dataAvailable)] 
	whileTrue: [
		(HTTPProgress new)
			total: length;
			amount: response position;
			signal: 'Downloading...'.
		self waitForDataFor: 5 ifClosed: [
				Transcript show: ' <connection closed> ']
			ifTimedOut: [
				Transcript show: 'data was slow'].
		bytesRead := self primSocket: socketHandle receiveDataInto: buf startingAt: 1 
				count: (length - response position). 
		bytesRead > 0 ifTrue: [  
			response nextPutAll: (buf copyFrom: 1 to: bytesRead)] ].
	"Transcript cr; show: 'data byte count: ', response position printString."
	"Transcript cr; show: ((self isConnected) ifTrue: ['Over length by: ', bytesRead printString] 
		ifFalse: ['Socket closed'])."
	response position < length ifTrue: [^ 'server aborted early'].
	response reset.	"position: 0."
	^ response