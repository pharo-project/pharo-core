update50083
	"self new update50083"
	self withUpdateLog: '15670 Integrate new version of code importer for 15658
	https://pharo.fogbugz.com/f/cases/15670'.
	self loadTogether: self script50083 merge: false.
	self loadConfiguration: 'CodeImporter' version: '1.1.1'.self flushCaches.
