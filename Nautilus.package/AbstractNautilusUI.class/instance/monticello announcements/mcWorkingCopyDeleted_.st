mcWorkingCopyDeleted: anAnnouncement
	| package rpackages |
	
	window ifNil: [^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	package := anAnnouncement package.
	package ifNil: [ ^ self ].
	rpackages := NautilusMCBindings default rPackagesFor: package.
	rpackages ifNil: [ ^ self ].
	rpackages do: [:rpackage | 
		PackagesIconsCache removeKey: rpackage ifAbsent: []].
	self updatePackageView