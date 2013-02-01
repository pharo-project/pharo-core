drawing
drawHeaderOn: aCanvas
	| drawBounds top item itemColor height width deltaY deltaX |

	drawBounds := self owner bounds.
	top := self topDifference.
	drawBounds := (-3@top) corner: (drawBounds right@top + self headerHeight).
	
	aCanvas
		fillRectangle: drawBounds
		fillStyle: ((GradientFillStyle 
						ramp: {0-> (Color r: 0.854 g: 0.836 b: 0.806). 1 -> Color gray muchLighter lighter})
						origin: (drawBounds left@ drawBounds bottom);
						direction: 0@(self headerHeight negated asFloat);
						normal: 0@1;
						radial: false;
						yourself).

	item := self headerTitle.	
	itemColor := Color black.
	
	height := item heightToDisplayInList: self.
	width := item widthToDisplayInList: self.
	deltaY := (drawBounds height - height /2) asInteger.
	deltaX := (self owner width - width /2) asInteger.
	drawBounds := drawBounds translateBy: deltaX@deltaY.
	item listRenderOn: aCanvas atRow: 0 bounds: drawBounds color: itemColor from: self.