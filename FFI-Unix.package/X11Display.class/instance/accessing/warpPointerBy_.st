warpPointerBy: aPoint
"Moves the mouse pointer from its current location to its current location + aPoint. Generates a mouse move event if the squeak window is active"

	^ self XWarpPointer: self
		sourceWindow: self None
		destWindow: self None
		sourceX: 0 sourceY: 0 sourceWidth: 0 sourceHeight: 0
		destX: aPoint x destY: aPoint y