addDebuggingItemsTo: aMenu hand: aHandMorph
	aMenu add: 'debug...' translated subMenu:  (self buildDebugMenu: aHandMorph).
	aMenu lastItem icon: Smalltalk ui icons smallDebugIcon