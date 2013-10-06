testBlockNumbering
	"Test that the compiler and CompiledMethod agree on the block numbering of a substantial doit."
	"self new testBlockNumbering"
	| methodNode method tempRefs |
	methodNode :=
		Parser new
			encoderClass: EncoderForV3PlusClosures;
			parse: 'foo
					| numCopiedValuesCounts classToRemove |
					numCopiedValuesCounts := Dictionary new.
					0 to: 32 do: [:i| numCopiedValuesCounts at: i put: 0].
					Transcript clear.
					Smalltalk allClasses remove: classToRemove; do:
						[:c|
						{c. c class} do:
							[:b|
							Transcript nextPut: b name first; endEntry.
							b selectorsAndMethodsDo:
								[:s :m| | pn |
								m isQuick not ifTrue:
									[pn := b parserClass new
												encoderClass: EncoderForV3PlusClosures;
												parse: (b sourceCodeAt: s)
												class: b.
									 pn generate.
									 [pn accept: nil]
										on: MessageNotUnderstood
										do: [:ex| | msg numCopied |
											msg := ex message.
											(msg selector == #visitBlockNode:
											 and: [(msg argument instVarNamed: ''optimized'') not]) ifTrue:
												[numCopied := (msg argument computeCopiedValues: pn) size.
												 numCopiedValuesCounts
													at: numCopied
													put: (numCopiedValuesCounts at: numCopied) + 1].
											msg setSelector: #==.
											ex resume: nil]]]]].
					numCopiedValuesCounts'
			class: Object.
	method := methodNode generate.
	tempRefs := methodNode encoder blockExtentsToTempsMap.
	self assert: tempRefs keys asSet = (method debuggerMap startpcsToBlockExtents: method) values asSet