update50209
	"self new update50209"
	self withUpdateLog: '16085 Removing PluugableTextMorph from MC tools
	https://pharo.fogbugz.com/f/cases/16085

16092 Change package group icon 
	https://pharo.fogbugz.com/f/cases/16092'.
	self loadTogether: self script50209 merge: false.
	self flushCaches.
