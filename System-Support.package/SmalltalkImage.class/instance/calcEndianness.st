endian
calcEndianness
	| bytes word blt |
	"What endian-ness is the current hardware?  The String '1234' will be stored into a machine word.  On BigEndian machines (the Mac), $1 will be the high byte if the word.  On LittleEndian machines (the PC), $4 will be the high byte."
	"SmalltalkImage current endianness"

	bytes := #[0 0 0 0].  "(1 2 3 4) or (4 3 2 1)"
	word := WordArray with: 16r01020304.
	blt := (BitBlt toForm: (Form new hackBits: bytes)) 
				sourceForm: (Form new hackBits: word).
	blt combinationRule: Form over.  "store"
	blt sourceY: 0; destY: 0; height: 1; width: 4.
	blt sourceX: 0; destX: 0.
	blt copyBits.  "paste the word into the bytes"
	bytes first = 1 ifTrue: [^ #big].
	bytes first = 4 ifTrue: [^ #little].
	self error: 'Ted is confused'.