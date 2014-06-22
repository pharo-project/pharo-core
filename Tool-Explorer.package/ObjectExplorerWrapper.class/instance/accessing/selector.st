selector
	parent ifNil: [ ^nil ].
	^(parent withoutListWrapper class allInstVarNames includes: itemName) ifTrue: [ itemName asSymbol ]