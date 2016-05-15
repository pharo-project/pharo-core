update60003
	"self new update60003"
	self withUpdateLog: '18129 ThemeIcons should store icons in an IdentityDictionarry
	https://pharo.fogbugz.com/f/cases/18129'.
	self loadTogether: self script60003 merge: false.
	
ThemeIcons current: ThemeIcons loadDefault .
NautilusUI resetIconCaches.
	self flushCaches.
