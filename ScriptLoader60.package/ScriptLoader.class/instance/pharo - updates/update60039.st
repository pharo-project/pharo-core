update60039
	"self new update60039"
	self withUpdateLog: '17164 Komitter LoadingMorph generates garbage for nothing and has a bad design
	https://pharo.fogbugz.com/f/cases/17164

18272 Impossible to remove a class with references
	https://pharo.fogbugz.com/f/cases/18272'.
	self loadTogether: self script60039 merge: false.
	self flushCaches.
