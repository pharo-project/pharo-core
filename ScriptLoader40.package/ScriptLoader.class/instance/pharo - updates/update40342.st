update40342
	"self new update40342"
	self withUpdateLog: '14326 ThemeIcons should use LRUCache
	https://pharo.fogbugz.com/f/cases/14326

14357 add Current class var to ThemeIcons
	https://pharo.fogbugz.com/f/cases/14357'.
	self loadTogether: self script342 merge: false.
	
ThemeIcons current initializeIcons.
	self flushCaches.
