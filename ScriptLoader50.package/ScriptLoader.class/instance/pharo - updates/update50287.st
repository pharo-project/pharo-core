update50287
	"self new update50287"
	self withUpdateLog: '16410 Add announceur (and not announcer) to Model
	https://pharo.fogbugz.com/f/cases/16410'.
	self loadTogether: self script50287 merge: false.
	self flushCaches.
