ensureCapacity: anInteger
	"returns if the table had to grow"
	self capacity < anInteger
		ifTrue: [
			self growTo: (self computeNewSize: anInteger).
			^ true ]
		ifFalse: [ ^false ].