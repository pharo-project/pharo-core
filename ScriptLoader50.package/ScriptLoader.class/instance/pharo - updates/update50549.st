update50549
	"self new update50549"
	self withUpdateLog: '17466 testVisitXMLParserConfigurationWithVersion101 failing 
	https://pharo.fogbugz.com/f/cases/17466

17438 New Rubric Configuration
	https://pharo.fogbugz.com/f/cases/17438

17454 QualityAssistant v2.3.3
	https://pharo.fogbugz.com/f/cases/17454'.
	self loadTogether: self script50549 merge: false.
	self loadConfiguration: 'Rubric' version: '2.6'.
self loadConfiguration: 'QualityAssistant' version: 'v2.3.3'.self flushCaches.
