pharo - updates
update20214
	"self new update20214"
	self withUpdateLog: 'Issue 6378:	Magnitude >> putOn: is faulty
	http://code.google.com/p/pharo/issues/detail?id=6378
	
Issue 6372:	objectForDataStream: just returns self
	http://code.google.com/p/pharo/issues/detail?id=6372
	
Issue 6371:	goferClassesInCategory not needed
	http://code.google.com/p/pharo/issues/detail?id=6371
	
Issue 6358:	Cleanup empty RPackage
	http://code.google.com/p/pharo/issues/detail?id=6358
	
Issue 5899:	hasUnacceptedEdits should be removed from Object and only kept on Model
	http://code.google.com/p/pharo/issues/detail?id=5899
	
Issue 2259:	unescapePercents and hidden dependencies
	http://code.google.com/p/pharo/issues/detail?id=2259'.
	self loadTogether: self script204 merge: false.
	RPackageOrganizer default unregisterPackageNamed: 'System-CommandLine-Tests'.
RPackageOrganizer default unregisterPackageNamed: 'System-Object Storage'.
RPackageOrganizer default unregisterPackageNamed: 'TrueType'.
RPackageOrganizer default unregisterPackageNamed: 'NautilusCommon-Plugin-Breadcrumbs'.
RPackageOrganizer default unregisterPackageNamed: 'Metacello-ToolBox'.
RPackageOrganizer default unregisterPackageNamed: 'Metacello-Platform'.
RPackageOrganizer default unregisterPackageNamed: 'Metacello-MC'.
RPackageOrganizer default unregisterPackageNamed: 'Metacello-Help'.
RPackageOrganizer default unregisterPackageNamed: 'Metacello-Core'.
RPackageOrganizer default unregisterPackageNamed: 'Metacello-Base'.
RPackageOrganizer default unregisterPackageNamed: 'MCDirtyPackage'.
RPackageOrganizer default unregisterPackageNamed: 'Graphics-Support'.
RPackageOrganizer default unregisterPackageNamed: 'ConfigurationOfMetacello'.
RPackageOrganizer default unregisterPackageNamed: 'ConfigurationOfHelpSystem'.
RPackageOrganizer default unregisterPackageNamed: 'ConfigurationOfGofer'.
RPackageOrganizer default unregisterPackageNamed: 'CodeImport-Tests'.
RPackageOrganizer default unregisterPackageNamed: 'Multilingual-UnicodeInitialization'.
	self flushCaches.
