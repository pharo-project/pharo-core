visitSequenceNode: aSequenceNode 
	aSequenceNode statements do: [:each | self visitNode: each].