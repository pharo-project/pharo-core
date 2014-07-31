update40146
	"self new update40146"
	self withUpdateLog: '13737 Little MenuMorph cleaning up
	https://pharo.fogbugz.com/f/cases/13737

13746 repackaging a simple problem with buttonToTriggerIn:
	https://pharo.fogbugz.com/f/cases/13746

13745 Cleaning polymorph again
	https://pharo.fogbugz.com/f/cases/13745

'.
	self loadTogether: self script146 merge: false.
	self flushCaches.
self cleanRepositories.
