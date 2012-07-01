private
guessConverter
	^ (self originalContents includesSubString: #[27 36] asString)
		ifTrue: [CompoundTextConverter new]
		ifFalse: [self class defaultConverter ]