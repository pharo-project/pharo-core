update30372
	"self new update30372"
	self withUpdateLog: '11412 Scenario for potential bug in MC/Classbuilder
	https://pharo.fogbugz.com/default.asp?11412'.
	self loadTogether: self script164 merge: false.
	self flushCaches.
