findSuggestionsFor: context	
	"Finds the best suggestions for the context passed as a parameter"
	| node suggestions |

	node := self findBestNodeFor: context .
	node ifNil: [ ^OrderedCollection new ].
	suggestions := node ifNotNil: [ node suggestions ].
	suggestions do:[:sugg| sugg context: context].
	^suggestions select: [:sugg | sugg isValidForContext ]
	
	