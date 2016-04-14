primitiveProcessExampleAfter: anExample
	anExample after ifNil: [ ^ self ].
	anExample after method 
		valueWithReceiver: anExample after provider 
		arguments: linkContext arguments