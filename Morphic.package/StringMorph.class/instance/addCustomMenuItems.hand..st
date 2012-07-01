menu
addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu add: 'change font' translated action: #changeFont.
	aCustomMenu add: 'change emphasis' translated action: #changeEmphasis.
