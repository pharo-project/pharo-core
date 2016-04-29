update50737
	"self new update50737"
	self withUpdateLog: '18125 Icon display problem in versioner remotes manager UI
	https://pharo.fogbugz.com/f/cases/18125'.
	self loadTogether: self script50737 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.13'.
ThemeIcons current: ThemeIcons loadDefault .
NautilusUI resetIconCaches.
	self flushCaches.
