computeScrollValueToPaneByIndex: aNumber
	|value|
	"self halt."
	self totalScrollRange.
	self innerBounds width.
	value := (self leftoverScrollRange = 0)
		ifFalse: [(((panes at: aNumber) position x) / self leftoverScrollRange) "asFloat"]
		ifTrue: [ 0 ].
	^ value.