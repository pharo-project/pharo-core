privateTempAt: index in: aContext put: aValue startpcsToBlockExtents: theContextsStartpcsToBlockExtents
	| nameRefPair |
	nameRefPair := (self privateTempRefsForContext: aContext
						 startpcsToBlockExtents: theContextsStartpcsToBlockExtents)
						at: index
						ifAbsent: [aContext errorSubscriptBounds: index].
	^self privateDereference: nameRefPair last in: aContext put: aValue