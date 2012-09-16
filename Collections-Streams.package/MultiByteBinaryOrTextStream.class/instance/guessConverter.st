private
guessConverter
	^ (self originalContents includesSubstring: #[27 36] asString)
		ifTrue: [CompoundTextConverter new]
		ifFalse: [self class defaultConverter ]