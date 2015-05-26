slotNamed: aName ifFound: foundBlock ifNone: exceptionBlock
	^self layout resolveSlot: aName asSymbol ifFound: foundBlock ifNone: exceptionBlock