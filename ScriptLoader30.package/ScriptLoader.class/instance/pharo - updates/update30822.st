update30822
	"self new update30822"
	self withUpdateLog: '13188 Renaming issue when trying to load Glorp
	https://pharo.fogbugz.com/f/cases/13188

13181 MCVersion should NEVER cache a snapshot of the working copy
	https://pharo.fogbugz.com/f/cases/13181

'.
	self loadTogether: self script475 merge: false.
	self flushCaches.
