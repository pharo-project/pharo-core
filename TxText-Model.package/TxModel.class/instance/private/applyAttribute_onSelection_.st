applyAttribute: anAttribute onSelection: selection
	"Apply given attribute to selection.  Preserve the selection interval while modifying the text"
	| currentSpan min max |
	
	selection isEmpty ifTrue: [ ^ self ].
	min := (selection start min: selection end).
	max := (selection start max: selection end).
	currentSpan := min span.
	[ 
		currentSpan applyAttribute: anAttribute from: min to: max.
		currentSpan == max span ifTrue: [  ^ self normalize: selection. "done" ].
		currentSpan := currentSpan next.
	] repeat.
	
	