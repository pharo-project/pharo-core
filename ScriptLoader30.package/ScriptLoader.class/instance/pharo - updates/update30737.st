update30737
	"self new update30737"
	self withUpdateLog: '12655 RPackage bug when moving a class to another package that has extensions in that package already
	https://pharo.fogbugz.com/f/cases/12655

'.
	self loadTogether: self script390 merge: false.
	self flushCaches.
