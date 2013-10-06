explorerContents
	"(CompiledMethod compiledMethodAt: #explorerContents) explore"
	
	^Array streamContents:
		[:s| | tokens |
		tokens := (self headerDescription readStream skipTo: $"; upTo: $") parseLiterals.
		s nextPut: (ObjectExplorerWrapper
						with: ((0 to: tokens size by: 2) collect:
								[:i| i = 0 ifTrue: [self header] ifFalse: [{tokens at: i - 1. tokens at: i}]])
						name: 'header'
						model: self).
		(1 to: self numLiterals) do:
			[:key|
			s nextPut: (ObjectExplorerWrapper
							with: (self literalAt: key)
							name: ('literal', key printString contractTo: 32)
							model: self)].
		self isQuick
			ifTrue: [s nextPut: (ObjectExplorerWrapper
									with: self symbolic
									name: #symbolic
									model: self)]
			ifFalse:
				[self symbolicLinesDo:
					[:pc :line|
					pc <= 1
						ifTrue:
							[s nextPut: (ObjectExplorerWrapper
											with: line
											name: 'pragma'
											model: self)]
						ifFalse:
							[s nextPut: (ObjectExplorerWrapper
											with: line
											name: pc printString
											model: self)]]].
				"should be self numLiterals + 1 * Smalltalk wordSize + 1"
		self endPC + 1
			to: self basicSize
			do: [:key|
				s nextPut: (ObjectExplorerWrapper
								with: (self basicAt: key)
								name: key printString
								model: self)]]