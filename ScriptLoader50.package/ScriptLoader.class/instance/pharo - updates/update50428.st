update50428
	"self new update50428"
	self withUpdateLog: '14109 When removing an ivar from a class, all packages of classes that are subclasses are Dirty
	https://pharo.fogbugz.com/f/cases/14109

16952 Change class template creation
	https://pharo.fogbugz.com/f/cases/16952

15542 Monticello marks a package dirty if you install an extension method package with a name starting with the first packages name
	https://pharo.fogbugz.com/f/cases/15542'.
	self loadTogether: self script50428 merge: false.
	self flushCaches.
