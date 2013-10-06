innerBounds
	| inner |
	inner := super innerBounds.
	retractableScrollBar | (submorphs includes: scrollBar) not ifFalse:[
		inner := (scrollBarOnLeft
					ifTrue: [ (inner left + scrollBar width) @ inner top corner: inner bottomRight]
					ifFalse: [inner topLeft corner: (inner right - scrollBar width) @ inner bottom])
	].
	(retractableScrollBar | self hIsScrollbarShowing not)
		ifTrue: [^ inner]
		ifFalse: [^ inner topLeft extent: (inner extent - (0@self scrollBarThickness))].
