newScrollBarUpButtonFor: aScrollbar

	^ BorderedMorph newBounds: (aScrollbar innerBounds topLeft extent: aScrollbar buttonExtent)