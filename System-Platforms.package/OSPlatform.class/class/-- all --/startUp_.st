startUp: resuming
	"Determine the current platform."
	
	resuming ifFalse: [  ^ self ].
	
	Current := self determineActivePlatform new.
	Current startUp: resuming