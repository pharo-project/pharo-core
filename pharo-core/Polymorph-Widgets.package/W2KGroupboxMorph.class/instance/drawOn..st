drawing
drawOn: aCanvas

	| aSmallerRect |
	aCanvas fillRectangle: self bounds fillStyle: self fillStyle.
	aSmallerRect := self bounds copy.
	aSmallerRect := aSmallerRect top: (aSmallerRect top + (self labelMorph bounds height / 1.5) asInteger).
	self borderStyle frameRectangle: aSmallerRect on: aCanvas.
	