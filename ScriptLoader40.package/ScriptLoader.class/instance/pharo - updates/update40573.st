update40573
	"self new update40573"
	self withUpdateLog: '15145 Spec TabManager selectedTab returns nil after first opening
	https://pharo.fogbugz.com/f/cases/15145

15182 add basic inspector option
	https://pharo.fogbugz.com/f/cases/15182

15195 test for redefined Slots on class side
	https://pharo.fogbugz.com/f/cases/15195

15188 Color ariphmetical operations are broken
	https://pharo.fogbugz.com/f/cases/15188

'.
	self loadTogether: self script573 merge: false.
	self flushCaches.
self cleanRepositories.
