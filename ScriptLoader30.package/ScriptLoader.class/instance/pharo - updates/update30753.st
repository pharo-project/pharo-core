update30753
	"self new update30753"
	self withUpdateLog: '12832 OpalCompiler / Debugger - Unknown variable:  please correct, or cancel
	https://pharo.fogbugz.com/f/cases/12832

12831 rpackages should not be registered is name matches packagetag name
	https://pharo.fogbugz.com/f/cases/12831

'.
	self loadTogether: self script406 merge: false.
	self flushCaches.
