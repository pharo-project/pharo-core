pharo - updates
update20490
	"self new update20490"
	self withUpdateLog: 'Issue 7321:	Add fail message with description. Thanks Camillo Bruni. http://code.google.com/p/pharo/issues/detail?id=7321
	
Issue 7322:	Issue 7322:	Preparations for Regression Tests: backup image and more vm options. Thanks Camillo Bruni. http://code.google.com/p/pharo/issues/detail?id=7322
		
Issue 7320:	Password field does no longer use asterisks to hide the password. Thanks Benjamin van Ryseghem
	http://code.google.com/p/pharo/issues/detail?id=7320
	
Issue 7330:	[BUG]: Autocomplete "use enter to accept" broken. Thanks Sean De Nigris
	http://code.google.com/p/pharo/issues/detail?id=7330
	
Issue 7329:	Reintroduce rename in Nautilus, and move format to another shortcut.
	Thanks Benjamin van Ryseghem
	http://code.google.com/p/pharo/issues/detail?id=7329'.
	self loadTogether: self script468 merge: false.
	KMRepository reset.
	self flushCaches.
