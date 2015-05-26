fileEntryAt: segment ifAbsent: aBlock
	^ packages
		at: (segment copyUpToLast: $.) asSymbol
		ifAbsent: aBlock