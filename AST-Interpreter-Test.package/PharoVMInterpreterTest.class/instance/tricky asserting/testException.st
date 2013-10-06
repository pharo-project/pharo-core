testException
	[ Error signal: #anErrorHappened ]
		on: Error
		do: [ :err | 
			self assert: (err isKindOf: Error).
			self assert: err messageText equals: #anErrorHappened.
			^ #success ].
	self fail.