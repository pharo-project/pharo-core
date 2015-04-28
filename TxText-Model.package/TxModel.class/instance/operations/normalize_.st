normalize: selection
	"Normalize the spans found in selection, trying to merge adjacent spans if they 
	has same style"

	| span normalizedSelection |
	normalizedSelection := selection normalized.
	span := normalizedSelection start span prev.
	
	[  span tryMergeWithNextPreserving: selection.
	   span == normalizedSelection end span ] whileFalse: [ span := span next ].

