monticello announcements
mcPackageModified: anAnnouncement
	" handled when a package become dirty "
	
	| rpackages |
	window ifNil: [^ self ].
	window isDisplayed ifFalse: [ ^ self ].

	rpackages := (NautilusMCBindings default rPackagesFor: anAnnouncement package).
	(self model packages includesAnyOf: rpackages )
		ifTrue: [ 
			rpackages do: [:rpackage | PackagesIconsCache removeKey: rpackage ifAbsent: []].
			self updatePackageView ]