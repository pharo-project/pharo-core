update50080
	"self new update50080"
	self withUpdateLog: '15632 Integrate latest version of CodeImporter
	https://pharo.fogbugz.com/f/cases/15632'.
	self loadTogether: self script50080 merge: false.
	self loadConfiguration: 'CodeImporter' version: '1.1.0'.self flushCaches.
