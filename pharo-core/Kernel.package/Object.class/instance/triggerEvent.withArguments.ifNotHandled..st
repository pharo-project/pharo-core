events-triggering
triggerEvent: anEventSelector
withArguments: anArgumentList
ifNotHandled: anExceptionBlock

    ^(self 
		actionForEvent: anEventSelector
		ifAbsent: [^anExceptionBlock value])
        valueWithArguments: anArgumentList