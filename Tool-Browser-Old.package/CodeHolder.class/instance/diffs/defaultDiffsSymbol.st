defaultDiffsSymbol
	"Answer the code symbol to use when generically switching to diffing"

	^TextDiffBuilder diffsWithPrettyPrint 
		ifTrue:
			[#prettyDiffs]
		ifFalse:
			[#showDiffs]