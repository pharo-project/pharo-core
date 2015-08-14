update50227
	"self new update50227"
	self withUpdateLog: '16194 Remove refresh button from QualityAssistant, improve UI a bit
	https://pharo.fogbugz.com/f/cases/16194

16193 Typo: generation -> generation
	https://pharo.fogbugz.com/f/cases/16193

15697 Speed up the autocompletion pop-up appearance delay
	https://pharo.fogbugz.com/f/cases/15697

16184 Update ConfigurationOfCatalog
	https://pharo.fogbugz.com/f/cases/16184'.
	self loadTogether: self script50227 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v1.2.1'.
self loadConfiguration: 'Catalog' version: '0.7'.self flushCaches.
