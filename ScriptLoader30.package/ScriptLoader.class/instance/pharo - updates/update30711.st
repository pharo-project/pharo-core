update30711
	"self new update30711"
	self withUpdateLog: '12163 New class template without poolDictionaries: line
	https://pharo.fogbugz.com/f/cases/12163

12632 window menu close all debuggers does not work anymore
	https://pharo.fogbugz.com/f/cases/12632

'.
	self loadTogether: self script364 merge: false.
	self flushCaches.
