as yet unclassified
asNBExternalType: gen

	self pointerSize = 4 ifTrue: [
		^ (gen resolveType: #uint32 )
		].
	
	self pointerSize = 8 ifTrue: [
		^  (gen resolveType: #uint64 )
		].
	
	self error: 'no clue'