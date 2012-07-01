utility
filesMatching: patterns
	"
	FileDirectory default fileNamesMatching: '*'
	FileDirectory default fileNamesMatching: '*.image;*.changes'
	"
	
	| files |
	files := Set new.
	
	(patterns findTokens: ';', String crlf) do: [ :pattern | 
		files addAll: (self files select: [:file | pattern match: file basename])].
	
	^files asOrderedCollection
