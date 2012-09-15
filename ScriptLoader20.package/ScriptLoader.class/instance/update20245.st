pharo - updates
update20245
	"self new update20245"
	self withUpdateLog: 'Issue 6510:	update zinc
	http://code.google.com/p/pharo/issues/detail?id=6510
	
Issue 6514:	Add allDefinedExtensionMethods to RPackage
	http://code.google.com/p/pharo/issues/detail?id=6514
	
Issue 6521:	RPackageOrganizer>>initialize does not initialize from scratch
	http://code.google.com/p/pharo/issues/detail?id=6521
	
Issue 6523:	Bug in RPackage >> systemSubPackages
	http://code.google.com/p/pharo/issues/detail?id=6523
	
Issue 6526:	RPackage is not removing extensions from a removed class
	http://code.google.com/p/pharo/issues/detail?id=6526'.
	self loadTogether: self script232 merge: false.
	(MCWorkingCopy allManagers 
	detect: [ :wc | wc packageName = 'Rpackage' ] 
	ifNone: [ nil ])
	ifNotNil: [ :wc | wc unregister ].
	self flushCaches.
