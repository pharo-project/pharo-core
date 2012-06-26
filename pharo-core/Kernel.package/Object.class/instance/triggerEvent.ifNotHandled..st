events-triggering
triggerEvent: anEventSelector
ifNotHandled: anExceptionBlock
	"Evaluate all actions registered for <anEventSelector>. Return the value of the last registered action."

    ^(self 
		actionForEvent: anEventSelector
		ifAbsent: [^anExceptionBlock value]) value
