fromColor: aColor
	^(self new)
		red: (aColor red * 16rFFFF) rounded;
		green: (aColor green * 16rFFFF) rounded;
		blue: (aColor blue * 16rFFFF) rounded;
		yourself