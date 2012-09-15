events
modifiedEventFor: aSelector ofClass: aClass
	| method |
	method := aClass compiledMethodAt: aSelector.
	^ MethodModified 
		methodChangedFrom: method
		to: method
		selector: aSelector
		inClass: aClass
		oldProtocol: nil
		newProtocol: nil
		requestor: nil.
