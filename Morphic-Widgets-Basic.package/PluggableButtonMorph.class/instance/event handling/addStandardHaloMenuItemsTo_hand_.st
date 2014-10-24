addStandardHaloMenuItemsTo: aMenu hand: aHandMorph

	aMenu add: 'browse action' action: #browseAction.
	aMenu addLine.
	super addStandardHaloMenuItemsTo: aMenu hand: aHandMorph.