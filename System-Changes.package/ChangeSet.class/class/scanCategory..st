scanning
scanCategory: file
	"Scan anything that involves more than one chunk; method name is historical only"
	| itemPosition item tokens stamp isComment anIndex |
	itemPosition := file position.
	item := file nextChunk.

	isComment := (item includesSubstring: 'commentStamp:').
	(isComment or: [item includesSubstring: 'methodsFor:']) ifFalse:
		["Maybe a preamble, but not one we recognize; bail out with the preamble trick"
		^{(ChangeRecord new file: file position: itemPosition type: #preamble)}].

	tokens := Scanner new scanTokens: item.
	tokens size >= 3 ifTrue:
		[stamp := ''.
		anIndex := tokens indexOf: #stamp: ifAbsent: [nil].
		anIndex ifNotNil: [stamp := tokens at: (anIndex + 1)].

		tokens second == #methodsFor:
			ifTrue: [^ self scanFile: file category: tokens third class: tokens first
							meta: false stamp: stamp].
		tokens third == #methodsFor:
			ifTrue: [^ self scanFile: file category: tokens fourth class: tokens first
							meta: true stamp: stamp]].

		tokens second == #commentStamp:
			ifTrue:
				[stamp := tokens third.
				item := (ChangeRecord new file: file position: file position type: #classComment
										class: tokens first category: nil meta: false stamp: stamp).
				file nextChunk.
				file skipStyleChunk.
				^Array with: item].
	^#()