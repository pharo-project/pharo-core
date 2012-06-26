defaults
setSystemProgressMorphDefaultParameters: aProgressMorph
	"Set up the given progress morph."
	aProgressMorph color: self settings derivedMenuColor.
	self settings preferRoundCorner
		ifTrue: [aProgressMorph useRoundedCorners].
	aProgressMorph borderWidth: self settings menuBorderWidth.
	aProgressMorph borderColor: self settings menuBorderColor.
	aProgressMorph updateColor.