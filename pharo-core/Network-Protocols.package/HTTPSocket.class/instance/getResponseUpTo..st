receiving
getResponseUpTo: markerString
	"Keep reading until the marker is seen.  Return three parts: header, marker, beginningOfData.  Fails if no marker in first 2000 chars." 

	| buf position bytesRead tester mm tries |
	buf := String new: 2000.
	position := 0.
	tester := 1. mm := 1.
	tries := 3.
	[tester := tester - markerString size + 1 max: 1.  "rewind a little, in case the marker crosses a read boundary"
	tester to: position do: [:tt |
		(buf at: tt) = (markerString at: mm) ifTrue: [mm := mm + 1] ifFalse: [mm := 1].
			"Not totally correct for markers like xx0xx"
		mm > markerString size ifTrue: ["got it"
			^ Array with: (buf copyFrom: 1 to: tt+1-mm)
				with: markerString
				with: (buf copyFrom: tt+1 to: position)]].
	 tester := 1 max: position.	"OK if mm in the middle"
	 (position < buf size) & (self isConnected | self dataAvailable) 
			& ((tries := tries - 1) >= 0)] whileTrue: [
		self waitForDataFor: 5 ifClosed: [
				Transcript show: ' <connection closed> ']
			ifTimedOut: [
				Transcript show: ' <response was late> '].
		bytesRead := self primSocket: socketHandle receiveDataInto: buf 
			startingAt: position + 1 count: buf size - position.
		position := position + bytesRead].

	^ Array with: (buf copyFrom: 1 to: position)
		with: ''
		with: ''		"Marker not found and connection closed".
