as yet unclassified
lookForOB
	(Smalltalk at: #OBTextPanel ifAbsent: [^self]) compile: 'createCompletionController
	^(ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ OController ]
		ifTrue: [ ECController ])
			model: self'