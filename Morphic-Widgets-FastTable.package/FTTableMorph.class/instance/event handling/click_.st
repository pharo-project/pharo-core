click: event
	| rowIndex |

	"perform the click"
	rowIndex := self container rowIndexContainingPoint: event cursorPoint.
	rowIndex 
		ifNotNil: [ selectionStrategy selectRowIndex: rowIndex event: event ]
		ifNil: [ self selectRowIndexes: #() ].
		
	"check for right click (menu)"
	(event yellowButtonPressed and: [(self commandOrCrontrolKeyPressed: event) not])
		ifTrue: [ self showMenuForPosition: event cursorPoint ]