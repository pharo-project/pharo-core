update40015
	"self new update40015"
	self withUpdateLog: '13281 Wrong environment when browsing scoped
	https://pharo.fogbugz.com/f/cases/13281

13301 Update metacelloPlatformAttributes
	https://pharo.fogbugz.com/f/cases/13301

13267 Settings Browser: Missing fields and file-dialogs in the Appearance Section
	https://pharo.fogbugz.com/f/cases/13267

13285 duplicated test: testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits
	https://pharo.fogbugz.com/f/cases/13285

'.
	self loadTogether: self script15 merge: false.
	self flushCaches.
