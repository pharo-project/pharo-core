isFixedWidth
	styleFlags == nil ifTrue:[^false].
	^faceFlags allMask: 4 "FT:=FACE:=FLAG:=FIXED:=WIDTH" 