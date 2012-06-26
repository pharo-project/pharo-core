events-triggering
triggerEvent: anEventSelector
with: anObject
ifNotHandled: anExceptionBlock

    ^self 
		triggerEvent: anEventSelector
		withArguments: (Array with: anObject)
		ifNotHandled: anExceptionBlock