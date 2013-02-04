drawing - item
drawItem: item at: index on: aCanvas

	"Display the given item at the given row on the given
	canvas."
	
	|  itemColor drawBounds itemBounds |

	drawBounds := self drawBoundsForItem: item at: index.
	itemBounds := drawBounds translateBy: (self iconMaxSize x + self gapBetweenIconAndItem)@(2*self itemHalfOffSet).
	itemColor := self colorForItem: item at: index.
	
	item listRenderOn: aCanvas atRow: index bounds: itemBounds color: itemColor from: self.
	self drawIconOn: aCanvas forAt: index from:  drawBounds.
	
	self flag: 'should be	item drawAsListItemOn: aCanvas row: index bounds: drawBounds list: self '