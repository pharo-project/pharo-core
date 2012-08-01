events
modifiedEventFor: aSelector ofClass: aClass
	| method |
	method := aClass compiledMethodAt: aSelector.
	^ ModifiedMethodEvent 
				methodChangedFrom: method
				to: method
				selector: aSelector
				inClass: aClass.
