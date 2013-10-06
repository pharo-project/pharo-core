getSourceReplacingSelectorWith: newSelector
	| oldKeywords newKeywords args newSelectorWithArgs source oldSelector s |
	source := self sourceCode.
	oldSelector := self ast selector.
	oldSelector = newSelector ifTrue: [ ^ source ].
	oldKeywords := oldSelector keywords.
	newKeywords := (newSelector ifNil: [self defaultSelector]) keywords.
	[oldKeywords size = newKeywords size] assert.
	args := self ast argumentNames.
	newSelectorWithArgs := String streamContents: [:stream |
		newKeywords withIndexDo: [:keyword :index |
			stream nextPutAll: keyword.
			stream space.
			args size >= index ifTrue: [
				stream nextPutAll: (args at: index); space]]].
	s := source string readStream.
	oldKeywords do: [ :each | s match: each ].
	args isEmpty ifFalse: [ s match: args last ].
	^newSelectorWithArgs trimBoth, s upToEnd