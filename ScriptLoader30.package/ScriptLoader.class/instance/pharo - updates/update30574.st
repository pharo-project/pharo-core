update30574
	"self new update30574"
	self withUpdateLog: '12162 Critics run on all extended classes
	https://pharo.fogbugz.com/f/cases/12162
	
12142 Cannot execute self xxxx in a message list
	https://pharo.fogbugz.com/f/cases/12142
	
12164 One Click on Mac is broken due to new source file lookup
	https://pharo.fogbugz.com/f/cases/12164'.
	self loadTogether: self script230 merge: false.
	 NativeBoost prepareForProduction.
	self flushCaches.
