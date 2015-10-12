mcPackageModified: anAnnouncement
	| package |
	self stagingArea isCurrent ifFalse: [ ^ self ].
	
	package := anAnnouncement package koPackage.
	
	package patch isEmpty
		ifTrue: [ self stagingArea removePackage: package ]
		ifFalse: [ self stagingArea addPackage: package ].
	
	view ifNil: [ ^ self ].
	
	package patch isEmpty
		ifTrue: [ view removeRoot: package ]
		ifFalse: [ view addRoot: package ]