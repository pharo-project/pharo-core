update30706
	"self new update30706"
	self withUpdateLog: '12679 change package of ClassTrait >> #soleInstance
	https://pharo.fogbugz.com/f/cases/12679

12649 Closing AnnouncementSpy does not unregister from associatedAnnouncer
	https://pharo.fogbugz.com/f/cases/12649

12585 asFullRingDefinition does not (always) find the package of a method
	https://pharo.fogbugz.com/f/cases/12585

'.
	self loadTogether: self script359 merge: false.
	self flushCaches.
