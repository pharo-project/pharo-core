update50768
	"self new update50768"
	self withUpdateLog: '19623 System Settings has "Menues" instead of "Menu"
	https://pharo.fogbugz.com/f/cases/19623'.
	self loadTogether: self script50768 merge: false.
	self flushCaches.
