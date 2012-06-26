menu actions
changeListKey: aChar from: view
	"Respond to a Command key in the list pane."

	aChar == $D ifTrue: [ ^self toggleDiffing ].
	aChar == $a ifTrue: [ ^self selectAll ].
	^ self arrowKey: aChar from: view