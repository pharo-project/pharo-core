update40368
	"self new update40368"
	self withUpdateLog: '14404 extend MorphicEventHandler with #mouseOver and replace all uses of MouseOverEventHandler
	https://pharo.fogbugz.com/f/cases/14404'.
	self loadTogether: self script368 merge: false.
	self flushCaches.
