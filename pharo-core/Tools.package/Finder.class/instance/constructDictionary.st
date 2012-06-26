private
constructDictionary
	"I construct the adequate dictionary regarding the search mode"

	| symbol |
	self searchingString isEmpty ifTrue: [ ^ self resultDictionary: Dictionary new].
	symbol := self currentSearchMode.
	self isSelectorsSymbol
		ifTrue: [ ^self constructDictionaryWithMessagesNameSearch: self searchingString].
	self isClassNamesSymbol
		ifTrue: [ ^self constructClassNamesDictionary].
	self isSourceSymbol
		ifTrue: [ ^self constructSourceDictionary].
	self isPatternSymbol
		ifTrue: [ ^self constructDictionaryWithMethodFinder: self searchingString].
	self isPragmasSymbol
		ifTrue: [ ^self constructDictionaryWithPragmaSearch: self searchingString].		
	self error: 'Error with radio buttons'