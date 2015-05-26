codeCascade: receiver messages: messages 
	
	"caseOf no otherwise"
	(messages allSatisfy: [ :m | m isMessage  ]) ifFalse: [ ^ self codeCaseOf: receiver messages: messages ].
	
	"check for big array"
	(receiver isMessageSend 
		and: [ receiver selector == #braceStream: 
			and: [ receiver arguments anyOne isLiteral 
				and:  [ receiver arguments anyOne value isInteger
					and: [ messages last selector == #braceArray 
						and: [ messages allButLast allSatisfy: [ :each | each selector == #nextPut: ] ] ] ] ] ])
							ifTrue: [ ^ RBArrayNode statements: (messages collect: [ :e | e arguments anyOne ]) ].

	"real cascade"
	messages do: [ :each | each receiver: receiver ].
	^ RBCascadeNode messages: messages 