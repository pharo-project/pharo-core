pharo - updates
update20436
	"self new update20436"
	RPackageOrganizer initialize.
	self withUpdateLog: 'Issue 7111: showing problem with extending packages
	http://code.google.com/p/pharo/issues/detail?id=7111
	
So I integrated the recategorization of 
    Job in Kernel-Job 
    ProgressBar in  Morphic-ProgressBar
+ adding comments
+ improving a bit ProgressBar.'.
	self loadTogether: self script415 merge: false.
	self flushCaches.
