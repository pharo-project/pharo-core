update40157
	"self new update40157"
	self withUpdateLog: '13770 Restore Menu Item to Add accessors for anInstVar
	https://pharo.fogbugz.com/f/cases/13770

13771 User Permission cannot be read from User 
	https://pharo.fogbugz.com/f/cases/13771

13794 Make Tools-Explorer unloadable
	https://pharo.fogbugz.com/f/cases/13794

'.
	self loadTogether: self script157 merge: false.
	self flushCaches.
self cleanRepositories.
