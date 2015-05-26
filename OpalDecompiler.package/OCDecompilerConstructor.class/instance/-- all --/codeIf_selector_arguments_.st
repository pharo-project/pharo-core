codeIf: receiver selector: selector arguments: arguments

	(receiver isMessage 
		and: [ receiver selector == #== 
			and: [ receiver arguments anyOne isLiteral 					
				and: [ receiver arguments anyOne value == nil ] ] ]) ifTrue: [ 
					selector == #ifTrue:ifFalse: ifTrue: [ 
						^ RBMessageNode 
							receiver: receiver receiver
							selector: #ifNil:ifNotNil:
							arguments: arguments ].
					selector == #ifFalse:ifTrue: ifTrue: [ 
						^ RBMessageNode 
							receiver: receiver receiver
							selector:  #ifNotNil:ifNil:
							arguments: arguments ] ].
					
	selector == #ifTrue:ifFalse: ifTrue: [ 		
						
	(arguments last isJust: nil) ifTrue:
		[^ RBMessageNode
			receiver: receiver
			selector: #ifTrue:
			arguments: (Array with: arguments first)].
	(arguments last isJust: false) ifTrue:
		[^ RBMessageNode
			receiver: receiver
			selector: #and:
			arguments: (Array with: arguments first)].
	(arguments first isJust: nil) ifTrue:
		[^ RBMessageNode
			receiver: receiver
			selector: #ifFalse:
			arguments: (Array with: arguments last)].
	(arguments first isJust: true) ifTrue:
		[^ RBMessageNode
			receiver: receiver
			selector: #or:
			arguments: (Array with: arguments last)].
	].
					
	"regular message"
	^ RBMessageNode 
			receiver: receiver 
			selector: selector 
			arguments: arguments 