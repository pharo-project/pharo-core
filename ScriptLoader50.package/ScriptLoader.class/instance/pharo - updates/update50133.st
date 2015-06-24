update50133
	"self new update50133"
	self withUpdateLog: '15831 Replace PluggableTextMorph with RubScrolledTextModel in Nautilus for source code
	https://pharo.fogbugz.com/f/cases/15831

15832 Integrate new FastTable
	https://pharo.fogbugz.com/f/cases/15832'.
	self loadTogether: self script50133 merge: false.
	self loadConfiguration: 'FastTable' version: '0.7.2'.self flushCaches.
