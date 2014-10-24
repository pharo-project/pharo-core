addCustomMenuItems: aCustomMenu hand: aHandMorph

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	self addLabelItemsTo: aCustomMenu hand: aHandMorph.
	aCustomMenu add: 'change action selector' action: #setActionSelector.
	aCustomMenu add: 'change arguments' action: #setArguments.
	aCustomMenu add: 'change when to act' action: #setActWhen.
	self addTargetingMenuItems: aCustomMenu hand: aHandMorph.
