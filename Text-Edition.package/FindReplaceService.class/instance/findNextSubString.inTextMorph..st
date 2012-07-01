services
findNextSubString: aSubString inTextMorph: aTextMorph
	| where  |
	findStartIndex 
		ifNil: [findStartIndex := aTextMorph editor startIndex].
	findStartIndex > 0 
		ifTrue: [where := aTextMorph findNextString: aSubString asString startingAt: findStartIndex].
	(where isNil and: [self wrapAround])
		ifTrue: [where := aTextMorph findNextString: aSubString asString startingAt: 1].
	^ where
