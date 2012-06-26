filein/out
nextChunkPutWithStyle: aString
	"Deprecated.  Append the argument, aText, to the receiver, doubling embedded terminators.  Put out one chunk for the string and one for the style runs.  Mark the style with ]style[."
 
	^ self nextChunkPut: aString asString.
