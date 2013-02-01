pharo - updates
update20381
	"self new update20381"
	self withUpdateLog: '- Issue 6916:	Fix smart characters to have different behavior depending on space presence. Thanks Stef and Anne :)
	http://code.google.com/p/pharo/issues/detail?id=6916
	
-  Issue 6675:	ZnNetworkUtils is not using proxy exceptions. Thanks Santiago and sven.
	http://code.google.com/p/pharo/issues/detail?id=6675'.
	self loadTogether: self script361 merge: false.
	self flushCaches.
