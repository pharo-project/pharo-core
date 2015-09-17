update50329
	"self new update50329"
	self withUpdateLog: '16589 #instead for block sequence
	https://pharo.fogbugz.com/f/cases/16589

16588 Integrate Catalog 0.9
	https://pharo.fogbugz.com/f/cases/16588

16586 Load latest version of CodeImporter
	https://pharo.fogbugz.com/f/cases/16586'.
	self loadTogether: self script50329 merge: false.
	self loadConfiguration: 'Catalog' version: '0.9'.
self loadConfiguration: 'CodeImporter' version: '1.1.2'.self flushCaches.
