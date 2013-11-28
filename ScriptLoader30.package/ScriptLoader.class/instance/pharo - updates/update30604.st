update30604
	"self new update30604"
	self withUpdateLog: '12253 Move some class behavior on class side in MCSaveVersionXXX
	https://pharo.fogbugz.com/f/cases/12253
	
12257 Add a way to hide the orange corner in Text
	https://pharo.fogbugz.com/f/cases/12257
	
12258 Add Spec support for changes made in 12257
	https://pharo.fogbugz.com/f/cases/12258
'.
	self loadTogether: self script259 merge: false.
	self flushCaches.
