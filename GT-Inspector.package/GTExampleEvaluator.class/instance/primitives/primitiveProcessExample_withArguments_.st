primitiveProcessExample: anExample withArguments: arguments
	| value |
	self withLinkContextFor: anExample do: [ 
		value := anExample provider perform: anExample method selector withArguments: arguments.
		" does not work with ReflectiveMethod: 
		value := anExample method valueWithReceiver: anExample provider arguments: arguments "
		self primitiveProcessExampleAfter: anExample.
		self primitiveProcessExampleAfterFinish: anExample ].
	^ value 