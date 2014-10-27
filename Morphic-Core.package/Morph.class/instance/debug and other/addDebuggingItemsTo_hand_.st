addDebuggingItemsTo: aMenu hand: aHandMorph
	aMenu add: 'debug...' subMenu:  (self buildDebugMenu: aHandMorph).
	aMenu lastItem icon: Smalltalk ui icons smallDebugIcon