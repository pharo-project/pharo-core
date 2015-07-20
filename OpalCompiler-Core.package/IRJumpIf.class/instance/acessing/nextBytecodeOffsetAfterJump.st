nextBytecodeOffsetAfterJump
	"check if we are in ifTrue:ifFalse: / ifFalse:ifTrue: or in ifTrue: / ifFalse: and answers the next byte code offset"

	^destination last isJump 
		ifTrue: [ destination last destination first bytecodeOffset ]
		ifFalse: [ 
			self flag: #FIXME. "it does not work in case of multiple byte code instruction in the optimized block"
			(destination sequence at: ((destination size - 1) max: 1)) bytecodeOffset ]