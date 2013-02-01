drawing - item
drawItem: item at: index on: aCanvas

	"Display the given item at the given row on the given
	canvas."
	
	|  itemColor drawBounds |

	drawBounds := self drawBoundsForItem: item at: index.
	drawBounds := drawBounds translateBy: 0@(self itemHalfOffSet).
	itemColor := self colorForItem: item at: index.
	
	item listRenderOn: aCanvas atRow: index bounds: drawBounds color: itemColor from: self.
	
"should be	item drawAsListItemOn: aCanvas row: index bounds: drawBounds list: self "