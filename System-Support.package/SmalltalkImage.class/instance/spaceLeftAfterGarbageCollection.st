memory space
spaceLeftAfterGarbageCollection
	"Return a string describing the amount of memory available"
	| availInternal availPhysical availTotal |
	self garbageCollect.
	availInternal := self primBytesLeft.
	availPhysical := self bytesLeft: false.
	availTotal := self bytesLeft: true.
	(availTotal > (availInternal + 10000)) "compensate for mini allocations inbetween"
		ifFalse:[^availInternal asStringWithCommas, ' bytes available'].
	^String streamContents:[:s|
		s nextPutAll: availInternal asStringWithCommas, 	' bytes (internal) '; cr.
		s nextPutAll: availPhysical asStringWithCommas,	' bytes (physical) '; cr.
		s nextPutAll: availTotal asStringWithCommas, 	' bytes (total)     '].