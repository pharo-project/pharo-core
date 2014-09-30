browseIt: t1 
	self currentUser canBrowse
		ifFalse: [^ false].
	self browseIt.
	^ true