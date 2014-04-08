update30816
	"self new update30816"
	self withUpdateLog: '11438 Change Sorter exports selected changes twice
	https://pharo.fogbugz.com/f/cases/11438

13184 Fix encoder for displaying high-range unicode chars
	https://pharo.fogbugz.com/f/cases/13184

12911 MetacelloRepositorySqueakCommonTestCase failing in fresh image on Windows
	https://pharo.fogbugz.com/f/cases/12911

'.
	self loadTogether: self script469 merge: false.
	self flushCaches.
