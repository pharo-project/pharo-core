morph creation
newLabelIn: aThemedMorph for: aModel label: aString getEnabled: enabledSel
	"Answer a new text label."

	^(super newLabelIn: aThemedMorph for: aModel label: aString getEnabled: enabledSel)
		disabledStyle: #inset