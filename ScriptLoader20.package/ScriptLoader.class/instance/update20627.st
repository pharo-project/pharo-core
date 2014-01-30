pharo - updates
update20627
	"self new update20627"
	self withUpdateLog: '12120 Let NativeBoost work without sources
	https://pharo.fogbugz.com/f/cases/12120
	
'.
	self loadTogether: self script600 merge: false.
	self flushCaches.
