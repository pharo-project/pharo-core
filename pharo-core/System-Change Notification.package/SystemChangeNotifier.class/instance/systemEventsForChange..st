private-event lists
systemEventsForChange: changeKind 
	| selectorBlock |
	selectorBlock := AbstractEvent eventSelectorBlock.
	^AbstractEvent allItemKinds 
		collect: [:itemKind | selectorBlock value: itemKind value: changeKind]