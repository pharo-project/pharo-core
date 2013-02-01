accessing
forCurrentPlatform

	"answer my subclass instance, suitable for use on current platform"
	self isEnabled ifFalse: [ Current := nil ].
	
	^ Current ifNil: [ self discoverPlatformId ]