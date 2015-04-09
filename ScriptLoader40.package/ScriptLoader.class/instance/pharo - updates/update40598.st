update40598
	"self new update40598"
	self withUpdateLog: '15315 Inspecting Slots raises an error
	https://pharo.fogbugz.com/f/cases/15315'.
	self loadTogether: self script598 merge: false.
	self flushCaches.
