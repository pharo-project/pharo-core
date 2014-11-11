update40362
	"self new update40362"
	self withUpdateLog: '14425 FileList should not be used as Widget for opening Folders
	https://pharo.fogbugz.com/f/cases/14425

14422 AnnouncementSpy is not needed anymore: GTInspector has all the functionality
	https://pharo.fogbugz.com/f/cases/14422

14436 NautilusTests package should be Nautilus-Tests
	https://pharo.fogbugz.com/f/cases/14436

14435 NECompletionTests package should be NECompletion-Tests
	https://pharo.fogbugz.com/f/cases/14435'.
	self loadTogether: self script362 merge: false.
	self flushCaches.
