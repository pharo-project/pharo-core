message list
messageList 

	| probe newSelectors |
	currentClassName ifNil: [^ #()].
	probe := (currentClassName endsWith: ' class')
		ifTrue: [currentClassName]
		ifFalse: [currentClassName asSymbol].
	newSelectors := myChangeSet selectorsInClass: probe.
	(newSelectors includes: currentSelector) ifFalse: [currentSelector := nil].
	^ newSelectors asSortedCollection
