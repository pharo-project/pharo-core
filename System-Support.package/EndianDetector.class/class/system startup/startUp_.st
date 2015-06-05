startUp: resuming

	"only handle when lauching a new image"
	resuming ifFalse: [ ^ self ].
	EndianCache := nil.