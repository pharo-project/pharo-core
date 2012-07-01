postscript generation
asFormWithSingleTransparentColors
	| transparentIndexes |
	transparentIndexes := self transparentColorIndexes.
	transparentIndexes size <= 1 ifTrue:[^self]
		ifFalse:[^self mapTransparencies:transparentIndexes].