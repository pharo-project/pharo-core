pharo - updates
update20621
	"self new update20621"
	self withUpdateLog: '11678 ConfigurationCommandLineHandler should allow multiple groups
	https://pharo.fogbugz.com/f/cases/11678
	
11628 Give Job its own announcer, no longer use the SystemAnnouncer [Backport]	
	https://pharo.fogbugz.com/f/cases/11628'.
	self loadTogether: self script594 merge: false.
	SystemAnnouncer uniqueInstance unsubscribe: SystemProgressMorph.
SystemProgressMorph enable.
	self flushCaches.
