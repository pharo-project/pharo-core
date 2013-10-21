update30510
	"self new update30510"
	self withUpdateLog: '11955 TabGroupMorph minExtent is broken
	https://pharo.fogbugz.com/f/cases/11955
	
11961 non-send method accesses undeclared ivar in PackageTreePacakgeSelection
	https://pharo.fogbugz.com/f/cases/11961
'.
	self loadTogether: self script165 merge: false.
	self flushCaches.
