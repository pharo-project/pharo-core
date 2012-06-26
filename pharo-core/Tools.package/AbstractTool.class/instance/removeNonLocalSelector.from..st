method
removeNonLocalSelector: aSymbol from: aClass
	| traits isAlias |
	traits := aClass traitsProvidingSelector: aSymbol.
	isAlias := aClass isLocalAliasSelector: aSymbol.
	isAlias
		ifTrue: [
			[traits size = 1] assert.
			aClass removeAlias: aSymbol of: traits first]
		ifFalse: [
			traits do: [:each |
				aClass addExclusionOf: aSymbol to: each ]]