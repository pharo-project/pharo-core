pharo - updates
update20167
	"self new update20167"
	self withUpdateLog: 'Issue 6176:	Add Zodiac https support (add Zinc-Zodiac)
	http://code.google.com/p/pharo/issues/detail?id=6176
	
Issue 6181:	put order on SUnit-Core-Utilities
	http://code.google.com/p/pharo/issues/detail?id=6181'.
	self loadTogether: self script157 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
.
	self flushCaches.
