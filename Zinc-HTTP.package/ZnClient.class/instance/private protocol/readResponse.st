readResponse
	self signalHTTPProgress: 'Reading response'.
	response := request method = #HEAD
		ifTrue: [ ZnResponse readHeaderFrom: connection ]
		ifFalse: [ 
			self streaming
				ifTrue: [ ZnResponse readStreamingFrom: connection ]
				ifFalse: [ ZnResponse readFrom: connection ] ].
	lastUsed := Time totalSeconds