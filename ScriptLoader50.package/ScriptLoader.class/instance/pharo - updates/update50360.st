update50360
	"self new update50360"
	self withUpdateLog: '16695 allow classes to force meta link options: #metaLinkOptions
	https://pharo.fogbugz.com/f/cases/16695

16699 remove ThemeIcons references in Versionner
	https://pharo.fogbugz.com/f/cases/16699'.
	self loadTogether: self script50360 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.5'.self flushCaches.
