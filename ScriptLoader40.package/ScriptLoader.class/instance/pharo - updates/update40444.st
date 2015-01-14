update40444
	"self new update40444"
	self withUpdateLog: '14733 do not check for coding convention on addClassVariable:
	https://pharo.fogbugz.com/f/cases/14733

14726 Add support for loading special Class Var definitions
	https://pharo.fogbugz.com/f/cases/14726'.
	self loadTogether: self script444 merge: false.
	self flushCaches.
