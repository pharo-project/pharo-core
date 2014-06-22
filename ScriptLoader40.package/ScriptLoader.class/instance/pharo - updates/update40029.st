update40029
	"self new update40029"
	self withUpdateLog: '13351 Tool-Finder should be extracted from Tools
	https://pharo.fogbugz.com/f/cases/13351

13350 Extract calendar to Morphic-Widgets-Extra
	https://pharo.fogbugz.com/f/cases/13350

'.
	self loadTogether: self script29 merge: false.
	self flushCaches.
