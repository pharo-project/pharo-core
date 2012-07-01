postscript generation
getTransparencyUnificationLUT
	| lut transparentIndex |
	lut := Array new:colors size.
	transparentIndex := self indexOfColor:Color transparent.
	1 to: colors size do:
		[ :i | lut at:i put:(((colors at:i) = Color transparent) ifTrue:[transparentIndex] ifFalse:[i])].
 