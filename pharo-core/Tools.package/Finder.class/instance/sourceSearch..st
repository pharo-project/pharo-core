private
sourceSearch: aResearchString
"I'm searching in sources"
	| originalList result aString |
	aString := aResearchString.
	
	originalList := self packagesSelection.
	result := OrderedCollection new.
	
	'Scanning' 
		displayProgressFrom: 0 to: originalList size
		during: [:bar |  

		self useRegEx
			ifTrue:[
				originalList doWithIndex: [:class :i || temp |
					bar current: i.
					temp := class methodDict select: [:method | (method sourceCode) substrings anySatisfy: [:sub | sub matchesRegexIgnoringCase: aString]].
					temp addAll: (class classSide methodDict select: [:method | (method sourceCode) substrings anySatisfy: [:sub | sub matchesRegexIgnoringCase: aString]]).
				result addAll: temp]]
			ifFalse:[
				originalList doWithIndex: [:class :i || temp |
					bar current: i.
					temp := class methodDict select: [:method | method sourceCode includesSubstring: aString caseSensitive: false].
					temp addAll: (class classSide methodDict select: [:method | method sourceCode  includesSubstring: aString caseSensitive: false]).
				result addAll: temp]]].
	^result.