editing
doneWithEdits
	"If in a SyntaxMorph, shrink min width after editing"

	| editor |
	super doneWithEdits.
	(owner respondsTo: #parseNode) ifTrue: [minimumWidth := 8].
	editor := (submorphs detect: [ :sm | sm isKindOf: StringMorphEditor ] ifNone: [ ^self ]).
	editor delete.