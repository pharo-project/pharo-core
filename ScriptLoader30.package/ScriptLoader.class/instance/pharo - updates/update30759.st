update30759
	"self new update30759"
	self withUpdateLog: '12849 Tools menu should be more clean
	https://pharo.fogbugz.com/f/cases/12849

12870 Class comments missing for Shout package
	https://pharo.fogbugz.com/f/cases/12870

12754 FileBrowser save on files smaller than the original not working
	https://pharo.fogbugz.com/f/cases/12754

12869 Class comments missing in SUnit packages
	https://pharo.fogbugz.com/f/cases/12869

'.
	self loadTogether: self script412 merge: false.
	self flushCaches.
