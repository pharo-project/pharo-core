update50693
	"self new update50693"
	self withUpdateLog: '17697 Badly encoded icon data
	https://pharo.fogbugz.com/f/cases/17697'.
	self loadTogether: self script50693 merge: false.
	
ThemeIcons loadDefault.
	self flushCaches.
