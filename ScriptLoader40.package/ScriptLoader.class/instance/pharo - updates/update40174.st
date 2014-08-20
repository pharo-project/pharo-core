update40174
	"self new update40174"
	self withUpdateLog: '13859 replace two uses of OCKeyedSet with Dictionary
	https://pharo.fogbugz.com/f/cases/13859

13856 Trivial cleanup in DebuggerModel
	https://pharo.fogbugz.com/f/cases/13856

13857 temporary fix old Browser to allow access to class organization protocol
	https://pharo.fogbugz.com/f/cases/13857

13819 Remove Check for Slips Preference
	https://pharo.fogbugz.com/f/cases/13819

'.
	self loadTogether: self script174 merge: false.
	self flushCaches.
self cleanRepositories.
