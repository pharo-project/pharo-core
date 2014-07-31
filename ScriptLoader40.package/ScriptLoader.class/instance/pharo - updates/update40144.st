update40144
	"self new update40144"
	self withUpdateLog: '12853 Factor out common snippet to OCUnderclaredVariableWarning>>declaredVariable:
	https://pharo.fogbugz.com/f/cases/12853

13663 when recompiling a Trait, the recompiled methods are not installed in the users
	https://pharo.fogbugz.com/f/cases/13663

13735 Clean up SystemNavigation more
	https://pharo.fogbugz.com/f/cases/13735

'.
	self loadTogether: self script144 merge: false.
	self flushCaches.
self cleanRepositories.
