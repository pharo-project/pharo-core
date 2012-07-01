private-event lists
systemEventsForItem: itemKind change: changeKind 
	^AbstractEvent eventSelectorBlock value: itemKind value: changeKind