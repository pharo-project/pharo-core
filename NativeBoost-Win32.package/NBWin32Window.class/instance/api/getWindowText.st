getWindowText
	"
	self getFocus getWindowText
	"
	| len str |	
	str := ByteString new: 1000.
	len := self getWindowText: self buffer: str bufferSize: 1000.
	^ str first: len.

	 