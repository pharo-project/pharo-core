update60043
	"self new update60043"
	self withUpdateLog: '18329 Make MessageBrowser work for CompiledMethods and RGMethodDefinitions
	https://pharo.fogbugz.com/f/cases/18329

18300 Nautilus does not warn about unaccepted changes in comment pane
	https://pharo.fogbugz.com/f/cases/18300

18196 ByteTextConverter uses EventSensorConstants
	https://pharo.fogbugz.com/f/cases/18196'.
	self loadTogether: self script60043 merge: false.
	self flushCaches.
