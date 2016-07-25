update60154
	"self new update60154"
	
OmSessionStore defaultBaseLocator: nil.
EpMonitor reset.
EpMonitor current enable.
	self withUpdateLog: '18812 epicea is not respecting the new pharo-local directory
	https://pharo.fogbugz.com/f/cases/18812

18770 Add a manifest and fix critics
	https://pharo.fogbugz.com/f/cases/18770

18772 Fix critics in SpecLayout
	https://pharo.fogbugz.com/f/cases/18772'.
	self loadTogether: self script60154 merge: false.
	self flushCaches.
