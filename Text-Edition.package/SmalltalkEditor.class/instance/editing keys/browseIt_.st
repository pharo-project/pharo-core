browseIt: t1 

	UserManager default canBrowse
		ifFalse: [^ false].
	self browseIt.
	^ true