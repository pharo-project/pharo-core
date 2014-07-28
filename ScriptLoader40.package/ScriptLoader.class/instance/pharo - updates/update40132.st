update40132
	"self new update40132"
	self withUpdateLog: '13707 Tiny critics clean in SpotLight package
	https://pharo.fogbugz.com/f/cases/13707

13710 tiny cleanup in Collections-Streams
	https://pharo.fogbugz.com/f/cases/13710

13713 tiny reformatting in EventManager
	https://pharo.fogbugz.com/f/cases/13713

13709 RBShouldntRaiseErrorRule has wrong name
	https://pharo.fogbugz.com/f/cases/13709

13708 Tiny Critic clean in FontInfrastructure
	https://pharo.fogbugz.com/f/cases/13708

13711 tiny cleanup in Tool-FileList
	https://pharo.fogbugz.com/f/cases/13711

'.
	self loadTogether: self script132 merge: false.
	self flushCaches.
self cleanRepositories.
