codeMessage: receiver selector: selector arguments: aCollection 
	"big arrays."
	((self braceSelector: selector numArgs) == selector) ifTrue: [ 1halt "does this happen ?" ].
	
	"ifnil, and , or. ..."
	(selector == #ifTrue:ifFalse: or: [ selector == #ifFalse:ifTrue: ]) ifTrue: [ ^ self codeIf: receiver selector: selector arguments: aCollection ].
							
	"regular message"
	^ RBMessageNode 
			receiver: receiver 
			selector: selector 
			arguments: aCollection 