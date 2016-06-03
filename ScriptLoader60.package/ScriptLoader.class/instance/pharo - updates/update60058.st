update60058
	"self new update60058"
	self withUpdateLog: '18389 Obsolete Critic class
	https://pharo.fogbugz.com/f/cases/18389

18392 Announcer should allow to subscribe on specific instances of events
	https://pharo.fogbugz.com/f/cases/18392

18387 Extend monticello to load ephemeron classes
	https://pharo.fogbugz.com/f/cases/18387'.
	self loadTogether: self script60058 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v3.0.1'.
QAEventCollector initialize.
SystemNavigation new obsoleteClasses first pointersTo detect: [ :s | s class = LegacyWeakSubscription ] ifFound: [ :sub | sub announcementClass: nil ].
	self flushCaches.
