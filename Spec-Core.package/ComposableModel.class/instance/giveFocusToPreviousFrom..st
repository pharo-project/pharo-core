private-focus
giveFocusToPreviousFrom: aMorph 

	| focus |
	focus := self focusOrder.

	(focus includes: aMorph)
		ifTrue: [
			| index previous |
			index := (focus indexOf: aMorph) - 1.
			(index > 0)
				ifTrue: [
					previous := focus at: index.
					previous takeLastKeyboardFocus.
					^ true ]].

	^ owner 
		ifNil: [ " I loop "
			| next |
			next := focus at: focus size ifAbsent: [ ^ false ].
			next takeLastKeyboardFocus.
			true]
		ifNotNil: [ 
			owner giveFocusToPreviousFrom: self.
			true ]