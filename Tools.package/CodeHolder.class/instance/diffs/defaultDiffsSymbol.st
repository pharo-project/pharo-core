defaultDiffsSymbol
	"Answer the code symbol to use when generically switching to diffing"

	^ self class diffsWithPrettyPrint 
		ifTrue:
			[#prettyDiffs]
		ifFalse:
			[#showDiffs]