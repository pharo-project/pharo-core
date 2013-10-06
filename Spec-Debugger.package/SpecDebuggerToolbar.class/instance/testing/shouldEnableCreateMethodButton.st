shouldEnableCreateMethodButton

	^ self session 
		ifNil: [false]  
		ifNotNil: [:aSession |
			aSession isInterruptedContextDoesNotUnderstand and: [aSession interruptedContext = self currentContext] ] 