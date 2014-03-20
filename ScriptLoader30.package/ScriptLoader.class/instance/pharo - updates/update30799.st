update30799
	"self new update30799"
	self withUpdateLog: '13091 EyeInspector switching should preserve text area contents
	https://pharo.fogbugz.com/f/cases/13091

13100 right arrow in package tree on nautilus should select next panel
	https://pharo.fogbugz.com/f/cases/13100

13090 EyeTreeInspector should open with one level expanded
	https://pharo.fogbugz.com/f/cases/13090

13099 nautilus is not refreshing package tree panel on certain operations
	https://pharo.fogbugz.com/f/cases/13099

'.
	self loadTogether: self script452 merge: false.
	self flushCaches.
