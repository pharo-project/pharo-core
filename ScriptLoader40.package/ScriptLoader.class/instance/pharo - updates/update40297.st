update40297
	"self new update40297"
	self withUpdateLog: '14210 Replace Announcer>>#on:send:to:s senders in Komitter
	https://pharo.fogbugz.com/f/cases/14210

14197 Little Morphic Package Reorganization
	https://pharo.fogbugz.com/f/cases/14197

14198 Time>>print24 prints nanos, though it claims not to
	https://pharo.fogbugz.com/f/cases/14198

14211 Replace Announcer>>#on:send:to:s senders in Manifest-CriticBrowser
	https://pharo.fogbugz.com/f/cases/14211

'.
	self loadTogether: self script297 merge: false.
	self flushCaches.
self cleanRepositories.
