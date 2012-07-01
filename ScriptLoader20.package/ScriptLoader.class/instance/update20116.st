pharo - updates
update20116
	"self new update20116"
	self withUpdateLog: '-  Issue 5993: Change in Scrollbar behavior. Thanks Thierry Goubier and Sean De Nigris
		http://code.google.com/p/pharo/issues/detail?id=5993
		
-  Issue 3423:	Debugger little usability enh 
		http://code.google.com/p/pharo/issues/detail?id=3423	

-  Issue 6019:	Collection>>#difference: behaviour change between 1.3 and 1.4
		http://code.google.com/p/pharo/issues/detail?id=6019'.
	self loadTogether: self script106 merge: false.
	self flushCaches.
