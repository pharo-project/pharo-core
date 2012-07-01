parsing
parseNextDeclaration
	| isMetadata nextChunk value |
	readStream skipSeparators.
	
	(self isNextStyleChunk) ifTrue: [
		self addDeclaration: (StyleDeclaration contents: (self readUpToEndOfStyleChunk)).
		^self
	].

	isMetadata := self isNextChunkMetaData.
	nextChunk := self nextChunk.
	
	isMetadata
		ifFalse: [ 
			self addDeclaration: (DoItDeclaration contents: nextChunk).
		] ifTrue: [
			| substrings |
			substrings := Scanner new scanTokens: nextChunk.
			
			(substrings includes: 'methodsFor:')
				ifTrue: [ ^self parseMethodDeclarations: substrings ].
			(substrings includes: 'commentStamp:')
				ifTrue: [ ^self parseCommentDeclaration: substrings ].
			(substrings includes: 'reorganize')
				ifTrue: [ ^self parseClassOrganization: substrings ].
		]