private-event lists
systemEventsForItem: itemKind 
	| selectorBlock |
	selectorBlock := AbstractEvent eventSelectorBlock.
	^AbstractEvent allChangeKinds 
		collect: [:changeKind | selectorBlock value: itemKind value: changeKind]