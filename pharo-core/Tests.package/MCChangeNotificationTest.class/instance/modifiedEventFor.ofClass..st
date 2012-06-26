events
modifiedEventFor: aSelector ofClass: aClass
	| method |
	method := aClass compiledMethodAt: aSelector.
	^ ModifiedEvent 
				methodChangedFrom: method
				to: method
				selector: aSelector
				inClass: aClass.
