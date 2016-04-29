update50733
	"self new update50733"
	self withUpdateLog: '18127 perform:withArguments: not working with WeakArray arguments
	https://pharo.fogbugz.com/f/cases/18127

18121 Hundreds of references to undeclared variables in Fuel
	https://pharo.fogbugz.com/f/cases/18121'.
	self loadTogether: self script50733 merge: false.
	self loadConfiguration: 'Fuel' version: '2.1.2'.self flushCaches.
