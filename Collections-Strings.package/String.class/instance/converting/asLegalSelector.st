asLegalSelector
	"e.g. '234znak 43 ) 2' asLegalSelector = #v234znak432"
	
	| toUse |
 	toUse := self select: [:char | char isAlphaNumeric].
	(toUse isEmpty or: [ toUse first isLetter not ])
		ifTrue: [ toUse := 'v', toUse ].
	^ toUse uncapitalized asSymbol.
