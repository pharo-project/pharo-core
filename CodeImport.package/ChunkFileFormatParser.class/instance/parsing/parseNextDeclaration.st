parseNextDeclaration
	| isMetadata nextChunk |
	readStream skipSeparators.
	
	(readStream isNextStyleChunk) ifTrue: [
		self addDeclaration: (StyleChunk contents: (readStream readUpToEndOfStyleChunk)).
		^self
	].

	isMetadata := readStream isNextChunkMetaData.
	nextChunk := readStream next.
	
	isMetadata
		ifFalse: [ 
			self addDeclaration: (DoItChunk contents: nextChunk).
		] ifTrue: [
			| substrings |
			substrings := nextChunk parseLiterals.
			
			(substrings includes: 'methodsFor:')
				ifTrue: [ ^self parseMethodDeclarations: substrings ].
			(substrings includes: 'commentStamp:')
				ifTrue: [ ^self parseCommentDeclaration: substrings ].
			(substrings includes: 'reorganize')
				ifTrue: [ ^self parseClassOrganization: substrings ].
		]