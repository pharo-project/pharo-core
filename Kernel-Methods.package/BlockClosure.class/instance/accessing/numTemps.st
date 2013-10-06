numTemps
	"Answer the number of temporaries for the receiver; this includes
	 the number of arguments and the number of copied values."
	| blockCreationBytecodeSize |
	^self numCopiedValues
	 + self numArgs
	 + (BlockLocalTempCounter
			tempCountForBlockAt: startpc - (blockCreationBytecodeSize := 4)
			in: self method)