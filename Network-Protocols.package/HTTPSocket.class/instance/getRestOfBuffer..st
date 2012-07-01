receiving
getRestOfBuffer: beginning
	"We don't know the length.  Keep going until connection is closed.  Part of it has already been received.  Response is of type text, not binary."

	| buf response bytesRead |
	response := RWBinaryOrTextStream on: (String new: 2000).
	response nextPutAll: beginning.
	buf := String new: 2000.

	[self isConnected | self dataAvailable] 
	whileTrue: [
		self waitForDataFor: 5 ifClosed: [
				Transcript show: ' <connection closed> ']
			ifTimedOut: [
				Transcript show: 'data was slow'].
		bytesRead := self primSocket: socketHandle receiveDataInto: buf 
				startingAt: 1 count: buf size. 
		bytesRead > 0 ifTrue: [  
			response nextPutAll: (buf copyFrom: 1 to: bytesRead)] ].
	response reset.	"position: 0."
	^ response
