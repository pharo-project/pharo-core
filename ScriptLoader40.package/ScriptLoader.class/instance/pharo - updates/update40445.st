update40445
	"self new update40445"
	self withUpdateLog: '14726 Add support for loading special Class Var definitions
	https://pharo.fogbugz.com/f/cases/14726

14733 do not check for coding convention on addClassVariable:
	https://pharo.fogbugz.com/f/cases/14733'.
	self loadTogether: self script445 merge: false.
	self flushCaches.
