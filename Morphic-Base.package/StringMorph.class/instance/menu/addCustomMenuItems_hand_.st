addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu add: 'change font' action: #changeFont.
	aCustomMenu add: 'change emphasis' action: #changeEmphasis.
