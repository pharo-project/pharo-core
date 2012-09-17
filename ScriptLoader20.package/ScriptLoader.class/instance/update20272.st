pharo - updates
update20272
	"self new update20272"
	self withUpdateLog: 'Issue 6607:	DNU on method category change in Pharo 20269
	http://code.google.com/p/pharo/issues/detail?can=2&q=6607
	
Issue 6613:	RPackageOrganizer error on MethodRemoved announcement
	http://code.google.com/p/pharo/issues/detail?id=6613
	
 Issue 6614:	Changing PluggableTextMorphWithLimits (un)lock icons
	http://code.google.com/p/pharo/issues/detail?can=2&q=6614
	
Issue 6615:	Fix Nautilus according to RPackage tags introduction
	http://code.google.com/p/pharo/issues/detail?can=2&q=6615'.
	self loadTogether: self script259 merge: false.
	RPackageOrganizer allInstances do: [ :i|
    SystemAnnouncer uniqueInstance unsubscribe: i ].
RPackageOrganizer initialize.
SystemAnnouncer restoreAllNotifications.
	self flushCaches.
