update60009
	"self new update60009"
	self withUpdateLog: '18191 remove FFI classes from ReleaseTest>>#testKeyClassesArePresentInStartupList
	https://pharo.fogbugz.com/f/cases/18191

18201 Reflectivity depends on Relfectivity-Tools
	https://pharo.fogbugz.com/f/cases/18201'.
	self loadTogether: self script60009 merge: false.
	self flushCaches.
