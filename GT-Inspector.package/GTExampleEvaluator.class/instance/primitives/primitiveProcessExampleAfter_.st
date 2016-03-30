primitiveProcessExampleAfter: anExample
	anExample after ifNil: [ ^ self ].
	anExample after method 
		valueWithReceiver: anExample after provider 
		arguments: #() " context, example, result ? -> try some examples first, then decide "