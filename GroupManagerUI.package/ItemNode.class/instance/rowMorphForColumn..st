testing
rowMorphForColumn: aTreeColumn

	^ self item ifNotNil: [:i | i prettyName asMorph] 