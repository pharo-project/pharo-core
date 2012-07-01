private
valuesFor: globalSymbols

	"Some globals, like ActiveHand have a nil value in the Smalltalk globals. Therefore, we cannot map nil to globalCluster. We could filter before in #defaultGlobalSymbols but that means that not even the Association will be consider global."
	^ (globalSymbols select: [:each | (Smalltalk globals at: each) isNil not ])
		collect: [:aSymbol | Smalltalk globals at: aSymbol] 
		as: IdentitySet