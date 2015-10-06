mouseUp: event
	| rowIndex |
	needToggleAtMooseUp
		ifFalse: [ ^ self ].
	"perform the click if the mouse down didn't did it."
	rowIndex := self container rowIndexContainingPoint: event cursorPoint.
	needToggleAtMooseUp := false.
	self selectRowIndex: rowIndex event: event