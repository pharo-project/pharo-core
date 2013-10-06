visitMessageNode: aMessageNode receiver: receiver
	| arguments message lookUpClass|
	
	context currentExecutedNode: aMessageNode.
	
	arguments := (aMessageNode arguments 
						collect: [ :argument| |arg|
							arg := (self interpret: argument).
							self ifSkip: [ ^ arg ].
							arg ]) asArray.
						
	message := Message selector: aMessageNode selector arguments: arguments.
	
	lookUpClass := aMessageNode isSuperSend 
						ifFalse: [ self classOf: receiver ]
						ifTrue: [ self currentMethodClass superclass ].
	
	^ self
		send: message
		to: receiver
		class: lookUpClass