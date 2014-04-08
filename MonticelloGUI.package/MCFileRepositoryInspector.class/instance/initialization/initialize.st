initialize
	super initialize.
	loaded := Set new.
	
	versionPattern := ''.
	packagePattern := ''.
	packageList := #().