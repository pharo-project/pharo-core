pharo - updates
update20482
	"self new update20482"
	self withUpdateLog: 'Issue 7261:	Improve PharoUser>>#retrieveGravatarFromMail:size: ZnClient usage
	http://code.google.com/p/pharo/issues/detail?id=7261
	
Issue 7267:	Update Pharo License String to 2013
	http://code.google.com/p/pharo/issues/detail?id=7267
'.
	self loadTogether: self script460 merge: false.
	self flushCaches.
