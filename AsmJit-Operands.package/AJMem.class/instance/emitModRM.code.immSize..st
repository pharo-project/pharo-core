emitting
emitModRM: emitter code: rCode immSize: immSize
	"Receiver is memory location"

	"[base + displacement]"
	(self hasBase and: [ self hasIndex not ])
		ifTrue: [ ^ self emitBaseDisplacementModRM: emitter code: rCode ].	
	
	"[base + index * scale + displacement]"
	(self hasBase and: [ self hasIndex ])
		ifTrue: [ ^ self emitScaledBaseDisplacementModRM: emitter code: rCode ].
		
	" Address                       | 32-bit mode | 64-bit mode
   ------------------------------+-------------+---------------
   [displacement]                |   ABSOLUTE  | RELATIVE (RIP)
   [index * scale + displacemnt] |   ABSOLUTE  | ABSOLUTE (ZERO EXTENDED)
   In 32 bit mode is used absolute addressing model.
   In 64 bit mode is used relative addressing model together with absolute
   addressing one. The main problem is that if the instruction contains a SIB byte
   then relative addressing (RIP) is not possible. "
	emitter is32BitMode
		ifTrue: [ ^ self emit32BitAbsoluteDisplacementModRM: emitter code: rCode ].
			
	emitter is64BitMode
		ifTrue: [ self shouldBeImplemented ].
		
	self invalidInstruction