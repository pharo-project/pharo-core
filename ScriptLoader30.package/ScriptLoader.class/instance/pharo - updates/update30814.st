update30814
	"self new update30814"
	self withUpdateLog: '12777 Athens font cacheing bug
	https://pharo.fogbugz.com/f/cases/12777

12460 eyeinspector refresh loop
	https://pharo.fogbugz.com/f/cases/12460

'.
	self loadTogether: self script467 merge: false.
	self flushCaches.
