scanning
skipBackBeforeJump
	"Assuming that the receiver is positioned jast after a jump, skip back one or two bytes, depending on the size of the previous jump instruction."
	| strm short |
	strm := InstructionStream on: self method.
	(strm scanFor: [:byte |
		((short := byte between: 152 and: 159) or: [byte between: 168 and: 175])
			and: [strm pc = (short ifTrue: [pc-1] ifFalse: [pc-2])]]) ifFalse: [self error: 'Where''s the jump??'].
	self jump: (short ifTrue: [-1] ifFalse: [-2]).
