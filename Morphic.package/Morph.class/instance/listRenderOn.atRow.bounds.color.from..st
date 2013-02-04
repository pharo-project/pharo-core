*Morphic-Widgets
listRenderOn: aCanvas atRow: aRow bounds: drawBounds color: drawColor from: aMorph

	self bounds: drawBounds.
	self fullDrawOn: aCanvas.
	aMorph addMorph: self