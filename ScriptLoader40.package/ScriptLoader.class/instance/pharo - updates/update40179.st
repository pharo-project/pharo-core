update40179
	"self new update40179"
	self withUpdateLog: '13889 Metaclass(Object)>>doesNotUnderstand: #protocolSuggestionsFor:
	https://pharo.fogbugz.com/f/cases/13889

13890 RBArrayNode>>#= uses #to:do: instead of #with:do: (Coding Idiom Violation)
	https://pharo.fogbugz.com/f/cases/13890

13847 move tests from Tests-Bugs to more fitting locations
	https://pharo.fogbugz.com/f/cases/13847

'.
	self loadTogether: self script179 merge: false.
	self flushCaches.
self cleanRepositories.
