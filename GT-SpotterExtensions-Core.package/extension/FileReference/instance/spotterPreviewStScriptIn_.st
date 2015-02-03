spotterPreviewStScriptIn: aComposite
	<spotterPreview: 10>
	
	(self extension = 'st' or: [self extension = 'ph']) 
		ifFalse: [ ^ self ].
	aComposite pharoMethod 
		display: #yourself;
		smalltalkClass: [ nil ];
		entity: (self readStreamDo: #contents)