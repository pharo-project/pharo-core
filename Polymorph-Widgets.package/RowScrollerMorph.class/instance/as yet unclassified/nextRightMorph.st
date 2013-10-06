nextRightMorph
	"Answer the next morph to the right of the current or
		the current if at the last."

	|index|
	index := self currentMorphIndex + 1 min: self targetMorphs size.
	^self targetMorphs at: index