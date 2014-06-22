addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	self addLabelItemsTo: aCustomMenu hand: aHandMorph.
	aCustomMenu add: 'change action selector' translated action: #setActionSelector.
	aCustomMenu add: 'change arguments' translated action: #setArguments.
	aCustomMenu add: 'change when to act' translated action: #setActWhen.
	self addTargetingMenuItems: aCustomMenu hand: aHandMorph.
