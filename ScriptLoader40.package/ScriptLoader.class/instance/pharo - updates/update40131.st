update40131
	"self new update40131"
	self withUpdateLog: '13659 ReparseAfterSourceEditing needs to be moved to Opal
	https://pharo.fogbugz.com/f/cases/13659

13706 #contentsChanged not needed on Object
	https://pharo.fogbugz.com/f/cases/13706

'.
	self loadTogether: self script131 merge: false.
	self flushCaches.
self cleanRepositories.
