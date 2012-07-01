monticello announcements
mcWorkingCopyCreated: anAnnouncement
	| package rpackage mcPackage |
	'Passed there' logCr.
	window ifNil: [^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	package := anAnnouncement package.
	package ifNil: [ ^ self ].
	rpackage := RPackageOrganizer default packageNamed: package name.
	(self model packages includes: rpackage)
		ifTrue: [ 
			PackagesIconsCache removeKey: rpackage  ifAbsent: [].
			self updatePackageView ]