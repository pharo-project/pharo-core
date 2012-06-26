pharo - updates
update20081
	"self new update20081"
	self withUpdateLog: '- Issue 5879:	Add missing initialization in Decompiler>>decompileBlock:. Thanks Nicolas Cellier.
	http://code.google.com/p/pharo/issues/detail?id=5879
	
- Issue 5892:	StartupPreferences try to load .DS_Store. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=5892
	
- Issue 5658:	Get rid of KeyDecodeTable in InputEventSensor. Thanks Guillermo Polito
	http://code.google.com/p/pharo/issues/detail?id=5658

-  Issue 5885:	FileBrowser/FileList cannot reset the search pattern. Thanks Nicolas Cellier.
	http://code.google.com/p/pharo/issues/detail?id=5885
	
- Issue 5673:	[ENH]: Setting to enable two-way halo cycling. Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=5673
		'.
	self loadTogether: self script70 merge: false.
	self flushCaches.
