private
handleRequestProtected: request
	"Handle request and return a response.
	If we have a delegate, pass the responsability.
	If we have no delegate, we return a page not found.
	If a Smalltalk Error is thrown, return a HTTP Server Error response."

	^ [ 
	self
		authenticateRequest: request
		do: [ 
			self delegate isNil
				ifTrue: [ ZnResponse notFound: request uri ]
				ifFalse: [ self delegate handleRequest: request ] ] ]
		on: Error
		do: [ :exception | 
			self debugMode
				ifTrue: [ exception pass ]
				ifFalse: [ ZnResponse serverError: exception printString ] ]