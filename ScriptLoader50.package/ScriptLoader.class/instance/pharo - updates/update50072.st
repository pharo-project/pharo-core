update50072
	"self new update50072"
	self withUpdateLog: '15399 SmalltalkImage: Thin Out Proliferation of File Access Messages
	https://pharo.fogbugz.com/f/cases/15399

15578 integrate STON
	https://pharo.fogbugz.com/f/cases/15578'.
	self loadTogether: self script50072 merge: false.
	self loadConfiguration: 'Ston' version: '0.14'.self flushCaches.
