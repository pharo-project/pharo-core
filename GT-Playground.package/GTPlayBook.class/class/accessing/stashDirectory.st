stashDirectory
	" lazy initialize the stash and always ensure its existence - especially while the image is running "
	stashDirectory ifNil: [ stashDirectory := self defaultStashDirectory ].
	^ stashDirectory ensureCreateDirectory