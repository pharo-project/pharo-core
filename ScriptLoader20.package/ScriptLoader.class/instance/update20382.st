pharo - updates
update20382
	"self new update20382"
	Gofer new
  	url: 'http://www.squeaksource.com/PharoTaskForces';
  	package: 'ConfigurationOfManifest';
	load.
((Smalltalk at: #ConfigurationOfManifest) project version: #stable) load.
	self withUpdateLog: 'Issue 6911:	integrate Manifest and Critics browser
	http://code.google.com/p/pharo/issues/detail?id=6911

Issue 6915:	after cleanUpForProduction, Nautilus throws DNU
	http://code.google.com/p/pharo/issues/detail?id=6915
	
Issue 6919:	Better file out of test results
	http://code.google.com/p/pharo/issues/detail?id=6919'.
	self loadTogether: self script362 merge: false.
	self flushCaches.
