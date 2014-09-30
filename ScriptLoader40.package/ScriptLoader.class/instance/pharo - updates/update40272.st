update40272
	"self new update40272"
	self withUpdateLog: '13931 Integrate GTools
	https://pharo.fogbugz.com/f/cases/13931'.
	self loadTogether: self script272 merge: false.
	self loadConfiguration: 'GTPlayground' version: '1.0'.
(Smalltalk at: #GTInspector) setGTInspectorEnabledStatus: true.
(Smalltalk at: #GTPlayground) setGTPlaygroundEnabledStatus: true.
	self flushCaches.
