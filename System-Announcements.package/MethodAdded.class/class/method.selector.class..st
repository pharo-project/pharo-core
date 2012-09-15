instance creation
method: aCompiledMethod selector: aSelector class: aClass
	self flag: #look.  "Is it ok to send an event with no protocol?"
	^self
		method: aCompiledMethod
		selector: aSelector
		protocol: nil
		class: aClass
		requestor: nil