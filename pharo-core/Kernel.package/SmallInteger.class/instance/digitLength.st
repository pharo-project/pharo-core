system primitives
digitLength
	"Answer the number of indexable fields in the receiver. This value is the 
	same as the largest legal subscript. Included so that a SmallInteger can 
	behave like a LargePositiveInteger or LargeNegativeInteger."

	(self < 16r100 and: [self > -16r100]) ifTrue: [^ 1].
	(self < 16r10000 and: [self > -16r10000]) ifTrue: [^ 2].
	(self < 16r1000000 and: [self > -16r1000000]) ifTrue: [^ 3].
	^ 4