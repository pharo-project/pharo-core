update30821
	"self new update30821"
	self withUpdateLog: '13197 When clicking Groups/Packages button, the button label does not change
	https://pharo.fogbugz.com/f/cases/13197

12729 Smalltalk condenseChanges raises ZnInvalidUTF8
	https://pharo.fogbugz.com/f/cases/12729

'.
	self loadTogether: self script474 merge: false.
	self flushCaches.
