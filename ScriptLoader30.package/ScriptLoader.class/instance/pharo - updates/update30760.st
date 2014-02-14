update30760
	"self new update30760"
	self withUpdateLog: '12874 Error on TBehavior>>originalName when the class is not in system dictionary but also does not start with AnObsolete
	https://pharo.fogbugz.com/f/cases/12874

12868 Class comments missing for Ring package
	https://pharo.fogbugz.com/f/cases/12868

'.
	self loadTogether: self script413 merge: false.
	self flushCaches.
