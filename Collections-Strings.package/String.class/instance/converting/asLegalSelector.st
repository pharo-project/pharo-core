asLegalSelector
	"e.g. '234znak 43 ) 2' asLegalSelector = #v234znak432"
	
	self deprecated: 'use asValidSelector instead'.
	
	^self asValidSelector
