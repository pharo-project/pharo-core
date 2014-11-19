update40375
	"self new update40375"
	self withUpdateLog: '14496 Emergency tool instead of the debugger starting (caused by issue #14469 in update #40373)
	https://pharo.fogbugz.com/f/cases/14496

14492 OpalCompiler depends on OpalDecompiler
	https://pharo.fogbugz.com/f/cases/14492'.
	self loadTogether: self script375 merge: false.
	self flushCaches.
