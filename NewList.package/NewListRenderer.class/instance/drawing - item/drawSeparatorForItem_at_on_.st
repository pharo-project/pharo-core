drawSeparatorForItem: item at: index on: aCanvas
	| frame rectangle height separatorColor |
	
	height := self separatorSize.
	separatorColor := self separatorColor.
	frame := self selectionFrameForItem: item at: index.
	rectangle := (frame left@(frame bottom - height)) corner: (frame right@frame bottom).
	aCanvas fillRectangle: rectangle color: separatorColor