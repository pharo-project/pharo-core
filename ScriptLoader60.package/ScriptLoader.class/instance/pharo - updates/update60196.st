update60196
	"self new update60196"
	self withUpdateLog: '18974 A Nautilus fix to support class method tests
	https://pharo.fogbugz.com/f/cases/18974

18991 asClass in RPackageTest
	https://pharo.fogbugz.com/f/cases/18991

18989 asClass in BlueInk
	https://pharo.fogbugz.com/f/cases/18989

19011 Integrate two double quotes inside comments
	https://pharo.fogbugz.com/f/cases/19011'.
	self loadTogether: self script60196 merge: false.
	self flushCaches.
