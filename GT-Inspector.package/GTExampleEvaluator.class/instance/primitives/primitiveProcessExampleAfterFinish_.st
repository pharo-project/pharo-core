primitiveProcessExampleAfterFinish: anExample
	anExample afterFinish ifNil: [ ^ self ].
	anExample == self example ifFalse: [ ^ self ].
	anExample afterFinish method 
		valueWithReceiver: anExample afterFinish provider 
		arguments: linkContext arguments