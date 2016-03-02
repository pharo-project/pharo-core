initialize
	data := (ExternalAddress allocate: self type typeSize) autoRelease.
	super initialize