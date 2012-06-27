initialize-release
close
	"Close the stream, flush if necessary"

	self flush.
	socket isNil ifTrue: [ ^ self ].
	self socketClose.  
	socket := nil