update30581
	"self new update30581"
	self withUpdateLog: '11565 Spec, displayBlock: [] should be called automatically after each list changes
	https://pharo.fogbugz.com/f/cases/11565'.
	self loadTogether: self script236 merge: false.
	self flushCaches.
