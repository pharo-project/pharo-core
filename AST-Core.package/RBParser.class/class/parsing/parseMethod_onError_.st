parseMethod: aString onError: aBlock 
	| parser |
	parser := self new.
	parser initializeParserWith: aString.
	parser errorBlock: aBlock.
	^parser parseMethod: aString