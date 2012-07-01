as yet unclassified
repositories
	^ (self useCache 
		ifTrue: [Array with: MCCacheRepository default] 
		ifFalse: [Array new]) , repositories select: #isValid