warpPointerFrom: aRectangle in: sourceWindow To: aPoint in: destWindow
"Moves the mouse pointer to aPoint relative to the top-left corner of a window"

	^ self XWarpPointer: self
		sourceWindow: sourceWindow xid
		destWindow: destWindow xid
		sourceX: aRectangle left sourceY: aRectangle top
			sourceWidth: aRectangle width sourceHeight: aRectangle height
		destX: aPoint x destY: aPoint y