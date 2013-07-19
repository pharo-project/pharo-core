pharo - updates
update20615
	"self new update20615"
	self withUpdateLog: '11192 Config browser does not update when switching repos
	https://pharo.fogbugz.com/f/cases/11192'.
	self loadTogether: self script588 merge: false.
	self flushCaches.
