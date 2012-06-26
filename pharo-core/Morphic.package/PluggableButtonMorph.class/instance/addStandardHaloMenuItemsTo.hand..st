private
addStandardHaloMenuItemsTo: aMenu hand: aHandMorph

	aMenu add: 'browse action' translated action: #browseAction.
	aMenu addLine.
	super addStandardHaloMenuItemsTo: aMenu hand: aHandMorph.