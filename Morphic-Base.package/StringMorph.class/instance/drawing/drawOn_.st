drawOn: aCanvas
	| bnd gap |
	bnd := self bounds.
	gap := self layoutInset.
	bnd := (bnd topLeft + gap) corner: (bnd bottomRight + gap).
	
	aCanvas
	fillRectangle: self bounds fillStyle: self backgroundColor;
	drawString: contents in: bnd font: self fontToUse color: color.