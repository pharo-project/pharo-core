update50189
	"self new update50189"
	self withUpdateLog: '11115 Trying to remove shouldGetStepsFrom:
	https://pharo.fogbugz.com/f/cases/11115

15769 Suggestions work in Nautilus but not in "Implementors" menu.
	https://pharo.fogbugz.com/f/cases/15769

12491 Finder menus for pragma search results partly broken/sensless
	https://pharo.fogbugz.com/f/cases/12491'.
	self loadTogether: self script50189 merge: false.
	self flushCaches.
