setUp
"	(Smalltalk includesKey: #TMPClass)
		ifTrue: [ (Smalltalk at: #TMPClass) removeFromSystem ].
"		
"	Smalltalk organization removeCategory: 'FooBarZork'."
	(MCPackage named: 'FooBarZork') unload.
	PackageOrganizer default unregisterPackageNamed: 'FooBarZork'.

	package := MBPackageInfo named: 'FooBarZork'.