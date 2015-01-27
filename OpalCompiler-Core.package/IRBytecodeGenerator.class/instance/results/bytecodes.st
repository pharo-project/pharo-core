bytecodes
	| stream |
	self updateJumpOffsets.
	stream := (ByteArray new: 100) writeStream.  
	orderSeq do: [ :seqId | 
			(instrMaps at: seqId) do: [ :assoc | assoc key bytecodeIndex: stream position + assoc value	"instr" ].
			stream nextPutAll: (seqBytes at: seqId) ].
	^ stream contents