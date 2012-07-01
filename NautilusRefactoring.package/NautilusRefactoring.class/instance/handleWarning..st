display
handleWarning: anException 
	| message |
	message := (anException messageText endsWith: '?')
		ifTrue: [ anException messageText ]
		ifFalse: [ anException messageText , String cr , 'Do you want to proceed?' ].
	(self confirm: message)
		ifTrue: [ anException resume ]
		ifFalse: [ anException return ]