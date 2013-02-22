drawing - item
drawIconOn: aCanvas forAt: index from: itemBounds
	| item icon maxSize drawBounds xOffset yOffset backgroundColor |
	
	item := self rawItemAtIndex: index.
	icon := self listSource iconForItem: item at: index.
	icon ifNil: [ ^ self ].
	
	maxSize := self iconMaxSize.
	drawBounds := itemBounds topLeft extent: maxSize.
	xOffset := (maxSize x - icon width) / 2.
	yOffset := (maxSize y - icon height) / 2 + self itemHalfOffSet.
	drawBounds := drawBounds translateBy: xOffset @ yOffset.
	backgroundColor := self backgroundColorForIndex: index.
	
	icon
		listRenderOn: aCanvas
		atRow: index
		bounds: drawBounds
		color: self iconColor
		backgroundColor: backgroundColor
		from: self