update60099
	"self new update60099"
	self withUpdateLog: '18538 remove dead code in UI Manager
	https://pharo.fogbugz.com/f/cases/18538

18540 Improve method level icon for #flag:
	https://pharo.fogbugz.com/f/cases/18540

18542 update dependencies of System-Support
	https://pharo.fogbugz.com/f/cases/18542

18543 update dependencies of SessionManager
	https://pharo.fogbugz.com/f/cases/18543

18528 RPackageNameTest resets SystemAnnouncer without restoring subscriptions
	https://pharo.fogbugz.com/f/cases/18528'.
	self loadTogether: self script60099 merge: false.
	self flushCaches.
