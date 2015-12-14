makeRGBPattern: aColor
	^self apiMakeRGBPat: self with: (MacRGBColor fromColor: aColor)