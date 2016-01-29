update50556
	"self new update50556"
	DangerousClassNotifier disable.
	self withUpdateLog: '17496 add table for all defined method selectors and use it in code completion and syntax highlighting
	https://pharo.fogbugz.com/f/cases/17496

'.
	self loadTogether: self script50556 merge: false.
	DangerousClassNotifier enable.
	self flushCaches.
self cleanRepositories.
