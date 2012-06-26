pharo - updates
update20078
	"self new update20078"
	self withUpdateLog: '- Issue 5923:	More Sensor cleans and Process browser cleans. Thanks Igor Stasenko. 
	http://code.google.com/p/pharo/issues/detail?id=5923
-  Issue 5921:	menu for transcripter
	http://code.google.com/p/pharo/issues/detail?id=5921
- Issue 5915:	Cleaning Icons
	http://code.google.com/p/pharo/issues/detail?id=5915
- Issue 5904:	Less dependentFields users. Thanks Benjamin van Ryseghem. It was fun pair hacking.
	http://code.google.com/p/pharo/issues/detail?id=5904
- Issue 5903:	MonticelloAnnouncer may announce two times an announcement. Thanks Igor and Benjamin. 
	http://code.google.com/p/pharo/issues/detail?id=5903'.
	self loadTogether: self script67 merge: false.
	self flushCaches.
