innerBounds
	| inner |
	inner := super innerBounds.
	(retractableScrollBar or: [ (submorphs includes: scrollBar) not ]) ifFalse:[
		inner := (inner topLeft corner: (inner right - scrollBar width) @ inner bottom)
	].
	(retractableScrollBar or: [ self hIsScrollbarShowing not ])
		ifTrue: [ ^ inner]
		ifFalse: [ ^ inner topLeft extent: (inner extent - (0@self scrollBarThickness))].
