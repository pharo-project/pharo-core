update40584
	"self new update40584"
	self withUpdateLog: '15233 Inspecting objects yields MessageNotUnderstood: MorphTreeColumnButton>>isDefault error
	https://pharo.fogbugz.com/f/cases/15233

15234 monticello is not showing right status when working with branches
	https://pharo.fogbugz.com/f/cases/15234

'.
	self loadTogether: self script584 merge: false.
	self flushCaches.
self cleanRepositories.
