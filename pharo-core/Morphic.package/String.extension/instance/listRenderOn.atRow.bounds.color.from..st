*Morphic-Widgets
listRenderOn: aCanvas atRow: aRow bounds: bounds color: color from: aMorph

	aCanvas
		drawString: self
		in: bounds
		font: aMorph font
		color: color