handleStartupErrors: startupErrors
	"Handle the errors produced during startup.
	
	Resume to open a non-interactive debugger on the recorded errors"
	self logError: 'Got startup errors: ' inContext: nil.
	
	startupErrors do: [ :error|
		self logError: '    ', error description inContext: nil ].
	
	self isInteractive 
		ifFalse: [ self exitFailure ]
		ifTrue: [  |answer|
			answer := (UIManager default 
				confirm: 'Got startup errors, proceed to open debuggers'
				trueChoice: 'Debug'
				falseChoice: 'Cancel').
			answer == true
				ifTrue: [ startupErrors do: #debug ]]