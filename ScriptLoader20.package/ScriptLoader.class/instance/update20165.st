pharo - updates
update20165
	"self new update20165"
	self withUpdateLog: 'Issue 6184:	Clean LanguageEnvironment initialization and startup
	http://code.google.com/p/pharo/issues/detail?id=6184

Issue 6177:	Refactor in ClassSearch
	http://code.google.com/p/pharo/issues/detail?id=6177
	
Issue 6179:	InMidstOfFileinNotification is used everywhere - recategorize it
	http://code.google.com/p/pharo/issues/detail?id=6179
	
Issue 6182:	ClassTestCase depends on Text
	http://code.google.com/p/pharo/issues/detail?id=6182'.
	self loadTogether: self script155 merge: false.
	self flushCaches.
