update50235
	"self new update50235"
	self withUpdateLog: '16221 ReEngine needs a #reset and #cleanUp method
	https://pharo.fogbugz.com/f/cases/16221

16224 Property API for Slots
	https://pharo.fogbugz.com/f/cases/16224

16226 Use the new property API on Globals when setting a link:
	https://pharo.fogbugz.com/f/cases/16226'.
	self loadTogether: self script50235 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v1.2.2'.self flushCaches.
