private-selector
messagesNameSearch: aStringArg
"I'm searching for selectors"
	| aString list result originalList bool starting exactMatch |
	originalList := self packagesSelection.
	result := OrderedCollection new.
	aString := (exactMatch := aStringArg first = $" and: [aStringArg last = $"])
				ifTrue: [(Symbol findInterned: (aStringArg copyFrom: 2 to: aStringArg size - 1))
							ifNil: [^result]
							ifNotNil: [:aSymbol| aSymbol]]
				ifFalse: [aStringArg].
	'Scanning'
		displayProgressFrom: 0 to: originalList size
		during:[ :bar | 
			self useRegEx
				ifTrue: [
					originalList doWithIndex: [:class :i || temp |
						bar current: i.
						temp := class methodDict select: [:method | (method selector asString) substrings anySatisfy: [:sub | sub matchesRegexIgnoringCase: aString]].
						temp addAll: (class classSide methodDict select: [:method | (method selector asString) substrings anySatisfy: [:sub | sub matchesRegexIgnoringCase: aString]]).
						result addAll: temp]]
				ifFalse: [
					originalList doWithIndex: [:class :i || temp |
						bar current: i.
						temp := class methodDict select:
							[:method |
							exactMatch
								ifTrue: [method selector = aString]
								ifFalse: [method selector asString includesSubstring: aString caseSensitive: false]].
						temp addAll: (class classSide methodDict select:
							[:method |
							exactMatch
								ifTrue: [method selector = aString]
								ifFalse: [method selector asString includesSubstring: aString caseSensitive: false]]).
						result addAll: temp]]].
	^result