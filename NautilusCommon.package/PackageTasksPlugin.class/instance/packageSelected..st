announcement
packageSelected: anAnnouncement
	
	| package name |
	package := anAnnouncement package.
	package
		ifNil: [ tasks removeAll ]
		ifNotNil: [ tasks := (self systemNavigation allCallsOn: 'flag:' asSymbol) select: [ :m | package includesMethod: m selector ofClass: m methodClass ] ].
	
	self changed: #tasks.