update50357
	"self new update50357"
	
(ThemeIconPack named: 'idea11') beCurrent.
	self withUpdateLog: '16684 remove ThemeIcons references in Glamour
	https://pharo.fogbugz.com/f/cases/16684'.
	self loadTogether: self script50357 merge: false.
	self loadConfiguration: 'GlamourCore' version: '3.2.3'.self flushCaches.
