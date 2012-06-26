as yet unclassified
nextLeftMorph
	"Answer the next morph to the left of the current or
		the current if at the last."

	|index|
	index := self currentMorphIndex - 1 max: 1.
	^self targetMorphs at: index