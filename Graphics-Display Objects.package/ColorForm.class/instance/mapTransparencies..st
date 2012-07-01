postscript generation
mapTransparencies:transparentIndexes
	^self deepCopy mapColors:transparentIndexes to:(transparentIndexes at:1).