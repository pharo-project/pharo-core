update50226
	"self new update50226"
	self withUpdateLog: '16183 Clean up class comment implementation
	https://pharo.fogbugz.com/f/cases/16183

16181 Better unifying of the columns width in Nautilus
	https://pharo.fogbugz.com/f/cases/16181

16182  Add Manifests for the bootstrap (part 2)
	https://pharo.fogbugz.com/f/cases/16182

16178 new nautilus icons (for class side, hierarchy, etc) are defined in wrong class
	https://pharo.fogbugz.com/f/cases/16178'.
	self loadTogether: self script50226 merge: false.
	self flushCaches.
