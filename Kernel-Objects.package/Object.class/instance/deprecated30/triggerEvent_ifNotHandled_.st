triggerEvent: anEventSelector
ifNotHandled: anExceptionBlock
	"Evaluate all actions registered for <anEventSelector>. Return the value of the last registered action." 
	self deprecated: 'do not used it anymore!' on: '21 May 2013' in: #Pharo30.
    ^(self 
		actionForEvent: anEventSelector
		ifAbsent: [^anExceptionBlock value]) value
