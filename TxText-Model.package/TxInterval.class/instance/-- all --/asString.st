asString 
	| min max |
	min := start min: end.
	max := start max: end.
		
	^String streamContents: [ :s | 
		min printTextOn: s upTo: max.		
	]