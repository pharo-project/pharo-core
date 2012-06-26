as yet unclassified
visitReference: anEntry
	(block value: anEntry) 
		ifTrue: [ out nextPut: anEntry ]