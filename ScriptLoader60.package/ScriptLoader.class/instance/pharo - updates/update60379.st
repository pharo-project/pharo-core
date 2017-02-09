update60379
	"self new update60379"
	self withUpdateLog: '19678 Zn Update Feb 2017
	https://pharo.fogbugz.com/f/cases/19678

19671 The button "Class" stays blue until the cursor leaves it when switching to instance side view
	https://pharo.fogbugz.com/f/cases/19671'.
	self loadTogether: self script60379 merge: false.
	self loadConfiguration: 'ZincHTTPComponents' version: '2.8.3'.self flushCaches.
