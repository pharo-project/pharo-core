update30805
	"self new update30805"
	self withUpdateLog: '13119 Color>>printOn: writes "NewColor" instead of Color
	https://pharo.fogbugz.com/f/cases/13119

13084 Avoid using \\\ as modulo operator
	https://pharo.fogbugz.com/f/cases/13084

13079 Adding better comment to difference: methods
	https://pharo.fogbugz.com/f/cases/13079

'.
	self loadTogether: self script458 merge: false.
	Smalltalk removeKey: #NewColor.
.
	self flushCaches.
