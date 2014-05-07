update30847
	"self new update30847"
	self withUpdateLog: '13247 copying a class also copies his comment
	https://pharo.fogbugz.com/f/cases/13247

13241 switching between package and  hierarchy view loses tag selection
	https://pharo.fogbugz.com/f/cases/13241

'.
	self loadTogether: self script109 merge: false.
	self flushCaches.
