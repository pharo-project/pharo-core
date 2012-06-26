private
setExtent: extent depth: bitsPerPixel
"reset the host window size to suit the extent chosen"
	self windowSize: extent.
	^super setExtent: extent depth: bitsPerPixel
