update50306
	"self new update50306"
	self withUpdateLog: '16485 Class panes not refreshed when changing package
	https://pharo.fogbugz.com/f/cases/16485

16479 Creating a class in an empty environment
	https://pharo.fogbugz.com/f/cases/16479

16481 #instead for Block
	https://pharo.fogbugz.com/f/cases/16481'.
	self loadTogether: self script50306 merge: false.
	self flushCaches.
