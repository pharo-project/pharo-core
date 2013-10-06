testGetLargeWideStringHTML
	| client text |
	text := '<html>{1}<h1>Czech is in Czech {2}e{2}tina.</h1>{3}</html>' 
		format: { 
			String new: ZnUtils streamingBufferSize withAll: $X.
			269 asCharacter. 
			353 asCharacter }.
	self assert: text isWideString.
	self withServerDo: [ :server |
		server onRequestRespond: [ :request | ZnResponse ok: (ZnEntity html: text) ].
		(client := ZnClient new)
			get: server localUrl.
		self assert: client isSuccess.
		self assert: client response contents equals: text.
		client close ]