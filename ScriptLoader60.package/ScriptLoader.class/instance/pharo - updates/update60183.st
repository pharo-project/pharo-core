update60183
	"self new update60183"
	self withUpdateLog: '18917 simplify trait name validation for bootstrap
	https://pharo.fogbugz.com/f/cases/18917

18941 ClassBuilderWarning should not override defaultAction
	https://pharo.fogbugz.com/f/cases/18941'.
	self loadTogether: self script60183 merge: false.
	self flushCaches.
