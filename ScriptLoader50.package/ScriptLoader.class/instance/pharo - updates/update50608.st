update50608
	"self new update50608"
	self withUpdateLog: '17392 FreeType numCharMaps nil causes Array>>basicNew: to fail
	https://pharo.fogbugz.com/f/cases/17392

'.
	self loadTogether: self script50608 merge: false.
	self flushCaches.
self cleanRepositories.
