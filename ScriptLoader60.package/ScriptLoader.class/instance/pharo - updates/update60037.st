update60037
	"self new update60037"
	self withUpdateLog: '18323 TabGroupMorph should update the hidden tabs on theme changed
	https://pharo.fogbugz.com/f/cases/18323'.
	self loadTogether: self script60037 merge: false.
	self flushCaches.
