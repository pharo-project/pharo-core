newMCVersion: anAnnouncement

	| rpackage |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	rpackage := anAnnouncement version package correspondingRPackage.
	rpackage ifNil: [ ^ self ].
	( self model packages includes: rpackage )
		ifTrue: [ 
			self removeFromPackagesIconsCache: rpackage.
			self updatePackageView ]