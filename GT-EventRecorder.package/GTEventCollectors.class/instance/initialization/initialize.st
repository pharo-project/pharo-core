initialize
	super initialize.
	mutex := Mutex new.
	collectors := IdentitySet new.