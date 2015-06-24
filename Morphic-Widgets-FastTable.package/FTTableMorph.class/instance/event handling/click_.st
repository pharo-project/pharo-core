click: event
	| rowIndex |

	"perform the click"
	rowIndex := self container rowIndexContainingPoint: event cursorPoint.
	rowIndex 
		ifNotNil: [ selectionStrategy selectRowIndex: rowIndex event: event ]
		ifNil: [ self selectRowIndexes: #() ].
		
	"check for right click (menu)"
	(event yellowButtonPressed and: [ event anyModifierKeyPressed not ])
		ifTrue: [ self showMenuForPosition: event cursorPoint ]
	