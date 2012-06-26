as yet unclassified
contains: aString caseSensitive: aBoolean do: aBlock 
	Symbol allSymbolTablesDo: [ :each | 
		((each includes: $ ) not and: [ each includesSubstring: aString caseSensitive: aBoolean ]) 
			ifTrue: [ aBlock value: each ] ]