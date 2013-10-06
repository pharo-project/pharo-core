triggerEvent: anEventSelector
withArguments: anArgumentList
ifNotHandled: anExceptionBlock 
	self deprecated: 'do not used it anymore!' on: '21 May 2013' in: #Pharo30.
    ^(self 
		actionForEvent: anEventSelector
		ifAbsent: [^anExceptionBlock value])
        valueWithArguments: anArgumentList