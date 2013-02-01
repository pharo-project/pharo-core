pharo - updates
update20441
	"self new update20441"
	self withUpdateLog: 'Issue 7028:	#cleanUpForRelease breaks ChangeSorter
	In fact ChangeSet cleanUp: true puts the system on its knees with 
	a nice endless loop due to moribond record.
	http://code.google.com/p/pharo/issues/detail?id=7028'.
	self loadTogether: self script420 merge: false.
	self flushCaches.
