childGeneratorBlock: doBlock matching: patterns
	"
	FileDirectory default fileNamesMatching: '*'
	FileDirectory default fileNamesMatching: '*.image;*.changes'
	"
	
	| files reference|
	files := Set new.
	reference := self resolve.
	
	(patterns findTokens: ';', String crlf) do: [ :pattern | 
		doBlock value: reference value: [ :basename|
			(pattern match: basename)
				ifTrue: [ files add: (self / basename) ]]].
	
	^files asOrderedCollection