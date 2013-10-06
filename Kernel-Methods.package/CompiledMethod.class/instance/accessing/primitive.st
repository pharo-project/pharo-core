primitive
	"Answer the primitive index associated with the receiver.
	Zero indicates that this is not a primitive method.
	We currently allow 10 bits of primitive index, but they are in two places
	for  backward compatibility.  The time to unpack is negligible,
	since the reconstituted full index is stored in the method cache."
	| primBits |
	primBits := self header bitAnd: 16r100001FF.
	
	^ (primBits bitAnd: 16r1FF) + (primBits bitShift: -19)
