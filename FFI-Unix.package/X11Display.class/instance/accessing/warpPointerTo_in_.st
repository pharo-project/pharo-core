warpPointerTo: aPoint in: aWindow
"Moves the mouse pointer to aPoint relative to the top-left corner of a window"

	^ self XWarpPointer: self
		sourceWindow: self None
		destWindow: aWindow xid
		sourceX: 0 sourceY: 0 sourceWidth: 0 sourceHeight: 0
		destX: aPoint x destY: aPoint y