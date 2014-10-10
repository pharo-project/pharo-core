update40296
	"self new update40296"
	self withUpdateLog: '14096 Rewrite lint rules to check classes and methods
	https://pharo.fogbugz.com/f/cases/14096

6512 Traits should not use compiler
	https://pharo.fogbugz.com/f/cases/6512

14203 OCStoreIntoReadOnlyVariableError: RecentMessageList>>#lastClasses
	https://pharo.fogbugz.com/f/cases/14203'.
	self loadTogether: self script296 merge: false.
	self flushCaches.
