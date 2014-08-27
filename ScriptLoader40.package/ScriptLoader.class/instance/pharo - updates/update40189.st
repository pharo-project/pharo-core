update40189
	"self new update40189"
	self withUpdateLog: '13918 RBMessageNode uses #to:do: instead of #with:do: (Coding Idiom Violation)
	https://pharo.fogbugz.com/f/cases/13918

'.
	self loadTogether: self script189 merge: false.
	self flushCaches.
self cleanRepositories.
