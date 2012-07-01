pharo - updates
update20173
	"self new update20173"
	self withUpdateLog: 'Issue 6221:	Move Text tests to TextTests package
	http://code.google.com/p/pharo/issues/detail?id=6221
	
Issue 6220:	Fix StartupPreferences
	http://code.google.com/p/pharo/issues/detail?id=6220
	
Issue 6208:	Directly browse single matched methods on implementors / senders search
	http://code.google.com/p/pharo/issues/detail?id=6208
	
Issue 6207:	FileBrowser does not open on Windows
	http://code.google.com/p/pharo/issues/detail?id=6207
	
Issue 6203:	Spotlight improvemen
	http://code.google.com/p/pharo/issues/detail?id=6203'.
	self loadTogether: self script163 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
