window
	"Answer the receiver's window."

	^ (self ownerThatIsA: GLMWindowBrick)
		ifNil: [ self ownerThatIsA: SystemWindow ]