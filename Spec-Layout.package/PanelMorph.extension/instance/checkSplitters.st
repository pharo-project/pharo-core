*Spec-Layout
checkSplitters
	| size |
	
	size := submorphs size.
	(self submorphsSatisfying: [:e | e isKindOf: ProportionalSplitterMorph ]) do: [:e || index idx |
		index := submorphs identityIndexOf: e.
		idx := index + 1.
		"above"
		[ idx <= size and: [ ((submorphs at: idx) isKindOf: ProportionalSplitterMorph) not ]] whileTrue: [
			e addLeftOrTop: (submorphs at: idx).
			idx := idx +1 ].
		
		idx := index - 1.
		
		"below"
		[ idx > 0 and: [ ((submorphs at: idx) isKindOf: ProportionalSplitterMorph) not ]] whileTrue: [
			e addRightOrBottom: (submorphs at: idx).
			idx := idx -1 ]]