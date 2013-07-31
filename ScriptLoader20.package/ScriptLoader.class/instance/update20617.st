pharo - updates
update20617
	"self new update20617"
	self withUpdateLog: '11252 backport 2.0: have SliceMaker use fogbugz
	https://pharo.fogbugz.com/f/cases/11252'.
	self loadTogether: self script590 merge: false.
	self flushCaches.
