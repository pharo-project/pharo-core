update30377
	"self new update30377"
	
SystemProgressMorph disable.
SystemAnnouncer uniqueInstance unsubscribe: SystemProgressMorph.
	self withUpdateLog: '11520 Give Job its own announcer, no longer use the SystemAnnouncer
	https://pharo.fogbugz.com/f/cases/11520
'.
	self loadTogether: self script169 merge: false.
	SystemProgressMorph enable.
	self flushCaches.
