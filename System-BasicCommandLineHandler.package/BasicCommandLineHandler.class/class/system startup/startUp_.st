startUp: isImageStarting
	"only handle when lauching a new image"
	isImageStarting ifFalse: [ ^ self ].

	Smalltalk addDeferredStartupAction: [ self new activate ]