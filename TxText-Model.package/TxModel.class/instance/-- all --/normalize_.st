normalize: selection
	"Normalize the spans found in selection, trying to merge adjacent spans if they 
	has same style"
	| min max span |
	
	min := selection start min: selection end.
	max := selection start max: selection end.
	
	span := min span prev.
	
	[  span tryMergeWithNextPreserving: selection.
	   span == max span ] whileFalse: [ span := span next ].

