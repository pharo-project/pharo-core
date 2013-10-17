fitContents

	| newExtent f |
	f := self fontToUse.
	newExtent := (((f widthOfString: contents) max: self minimumWidth) min: self maximumWidth)  @ f height.
	(self extent = newExtent) ifFalse:
		[self extent: newExtent.
		self changed]
