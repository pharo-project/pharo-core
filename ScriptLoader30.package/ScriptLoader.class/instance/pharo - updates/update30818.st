update30818
	"self new update30818"
	self withUpdateLog: '13149 FontManager is not refreshed with embedded fonts
	https://pharo.fogbugz.com/f/cases/13149

'.
	self loadTogether: self script471 merge: false.
	self flushCaches.
