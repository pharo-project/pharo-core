update40225
	"self new update40225"
	self withUpdateLog: '13833 rename String>>#withFirstCharacterDownshifted to String>>#uncapitalized
	https://pharo.fogbugz.com/f/cases/13833

14015 ISOLanguages defined some KIds countries.
	https://pharo.fogbugz.com/f/cases/14015

'.
	self loadTogether: self script225 merge: false.
	self flushCaches.
self cleanRepositories.
