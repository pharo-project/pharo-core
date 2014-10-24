primitive
	"Answer the primitive index associated with the receiver.
	Zero indicates that this is not a primitive method.
	We currently allow 10 bits of primitive index, but they are in two places
	for  backward compatibility.  The time to unpack is negligible,
	since the reconstituted full index is stored in the method cache."
	| primBits |
	Smalltalk vm isSpur ifTrue: [
		(self header bitAt: 16) = 0 ifTrue: [ ^ 0 ].
		^ (self at: self initialPC + 2) * 256 + (self at: self initialPC + 1) ]. 
	primBits := self header bitAnd: 16r100001FF.
	^ (primBits bitAnd: 16r1FF) + (primBits bitShift: -19)
