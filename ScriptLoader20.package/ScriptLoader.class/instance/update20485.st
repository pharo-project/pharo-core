pharo - updates
update20485
	"self new update20485"
	self withUpdateLog: 'Issue 7312:	Clean in Polymorph
	http://code.google.com/p/pharo/issues/detail?id=7312
	
Issue 7292:	Autocomplete partial matches	
	http://code.google.com/p/pharo/issues/detail?id=7292
	
Issue 7236:	"RPackage organizer packages" returns wrong packages
	http://code.google.com/p/pharo/issues/detail?id=7236'.
	self loadTogether: self script463 merge: false.
	RPackageOrganizer initialize.
	self flushCaches.
