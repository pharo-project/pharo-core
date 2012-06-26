as yet unclassified
methods
	^ MCMockClassA selectors
		select: [:ea | ea beginsWith: 'ordinal']
		thenCollect:
			[:ea | RGMethodDefinition realClass: MCMockClassA selector: ea ]