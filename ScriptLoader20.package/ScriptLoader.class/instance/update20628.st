pharo - updates
update20628
	"self new update20628"
	self withUpdateLog: '12145 Settings: Replace references to FileDirectory
	https://pharo.fogbugz.com/f/cases/12145'.
	self loadTogether: self script601 merge: false.
	self flushCaches.
