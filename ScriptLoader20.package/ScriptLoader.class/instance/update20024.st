pharo - updates
update20024
	"self new update20024"
	self withUpdateLog: 'Issue 5719:	Create trait with Nautilus fails
	http://code.google.com/p/pharo/issues/detail?id=5719
	
-> last Nautilus and Spec packages'.
	self loadTogether: self script18 merge: false.
	self flushCaches.
