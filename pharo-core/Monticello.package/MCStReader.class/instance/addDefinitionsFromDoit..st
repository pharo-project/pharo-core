as yet unclassified
addDefinitionsFromDoit: aString
	(MCDoItParser forDoit: aString) ifNotNil:
		[:parser |
		parser addDefinitionsTo: definitions]