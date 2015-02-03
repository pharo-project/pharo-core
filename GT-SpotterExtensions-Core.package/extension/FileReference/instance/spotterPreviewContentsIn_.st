spotterPreviewContentsIn: aComposite
	<spotterPreview: 20>
	
	self isFile ifFalse: [ ^ self ].
	aComposite custom: 
		(RubScrolledTextMorph new
			setTextWith: (self readStreamDo: [ :stream | 
					| result |
					result := [(stream next: 10000) asString]
						on: Error 
						do: [ (stream binary next: 10000) asString ].
					stream size > 10000
						ifTrue: [ result, '  ... truncated ...' ]
						ifFalse: [ result ] ]) )