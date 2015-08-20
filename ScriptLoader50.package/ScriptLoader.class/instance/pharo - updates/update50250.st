update50250
	"self new update50250"
	self withUpdateLog: '16305 Update configuration of Rubric
	https://pharo.fogbugz.com/f/cases/16305

16273 RubSmalltalkEditor(Object)>>doesNotUnderstand: #shiftedTextPaneMenuRequest
	https://pharo.fogbugz.com/f/cases/16273'.
	self loadTogether: self script50250 merge: false.
	self loadConfiguration: 'Rubric' version: '1.18.1'.self flushCaches.
