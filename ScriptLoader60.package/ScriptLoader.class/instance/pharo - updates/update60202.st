update60202
	"self new update60202"
	self withUpdateLog: '19001 Another pass to introduce iconNamed: and avoid Smalltalk ui icons
	https://pharo.fogbugz.com/f/cases/19001

19002 iconNamed: in Catalog Browser
	https://pharo.fogbugz.com/f/cases/19002'.
	self loadTogether: self script60202 merge: false.
	self flushCaches.
