materializeInstanceWith: aDecoder

	^ theClass newFromFrameSize: aDecoder nextEncodedByte
