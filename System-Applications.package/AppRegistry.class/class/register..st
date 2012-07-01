registering
register: aProviderClass

	(self registeredClasses includes: aProviderClass) ifTrue: [ ^ self ].
	
	self askForNewDefaultOnNextRequest.	"if you're registering a new app you probably want to use it"
	self registeredClasses add: aProviderClass.