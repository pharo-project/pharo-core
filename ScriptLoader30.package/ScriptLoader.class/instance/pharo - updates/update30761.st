update30761
	"self new update30761"
	self withUpdateLog: '12862 Class comments missing in Athens package
	https://pharo.fogbugz.com/f/cases/12862

12773 Adding packages to group raises DNU Metaclass>>prettyName:
	https://pharo.fogbugz.com/f/cases/12773

12741 [Dual]ChangeSorter is badly broken
	https://pharo.fogbugz.com/f/cases/12741

'.
	self loadTogether: self script414 merge: false.
	self flushCaches.
