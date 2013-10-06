close
	self critical: [ 
		stream ifNotNil: [ 
			self isStdout 
				ifTrue: [ stream flush ]
				ifFalse: [ stream close ].
			stream := nil ] ]