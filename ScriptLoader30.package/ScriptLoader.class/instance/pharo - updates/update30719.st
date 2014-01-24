update30719
	"self new update30719"
	self withUpdateLog: '12703 revert DockingBarMorph>>updatePosition
	https://pharo.fogbugz.com/f/cases/12703

12704 clean FontMorphChooser
	https://pharo.fogbugz.com/f/cases/12704

'.
	self loadTogether: self script372 merge: false.
	self flushCaches.
