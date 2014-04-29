update30841
	"self new update30841"
	self withUpdateLog: '13136 Pharo3Theme scrollbars looking like dead without visual indicators
	https://pharo.fogbugz.com/f/cases/13136

It was ok, I just restored the old scrollbar colors because the new ones are breaking completely the theme style. 
'.
	self loadTogether: self script103 merge: false.
	self flushCaches.
