logChange: aStringOrText
	"Write the argument, aString, onto the changes file."

	| aString changesFile |
	(SourceFiles at: 2) ifNil: [ ^ self ].
	self assureStartupStampLogged.
	aString := aStringOrText asString.
	(aString findFirst: [ :char | char isSeparator not ]) = 0
		ifTrue: [ ^ self ].	"null doits confuse replay"
	changesFile := SourceFiles at: 2.
	changesFile isReadOnly
		ifTrue: [ ^ self ].
	changesFile
		setToEnd;
		cr;
		cr.
	changesFile nextChunkPut: aString.	"If want style changes in DoIt, use nextChunkPutWithStyle:, and allow Texts to get here"
	self forceChangesToDisk