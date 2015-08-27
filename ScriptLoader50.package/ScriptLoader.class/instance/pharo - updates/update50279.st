update50279
	"self new update50279"
	self withUpdateLog: '16400 remaining haltOnce (and copy method)
	https://pharo.fogbugz.com/f/cases/16400

16333 no syntax highlighting in TextModel beForCode
	https://pharo.fogbugz.com/f/cases/16333

16371 Integrate new stable version of OSWindow
	https://pharo.fogbugz.com/f/cases/16371'.
	self loadTogether: self script50279 merge: false.
	self loadConfiguration: 'OSWindow' version: '1.2.5'.self flushCaches.
