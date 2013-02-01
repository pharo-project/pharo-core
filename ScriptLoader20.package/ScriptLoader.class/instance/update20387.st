pharo - updates
update20387
	"self new update20387"
	self withUpdateLog: 'Issue 2178:	Reverse the logic and avoid a copy in DeflateStream
	http://code.google.com/p/pharo/issues/detail?id=2178
	
Issue 6760:	Traits do not get repackaged
	http:Argument expected -> //code.google.com/p/pharo/issues/detail?id=6760
	
Issue 6937:	RGMonticelloTest in unsuitable package
	http://code.google.com/p/pharo/issues/detail?id=6937
	
Issue 6941:	Extend Startup SafetyNet for Halt
	http://code.google.com/p/pharo/issues/detail?id=6941'.
	self loadTogether: self script367 merge: false.
	self flushCaches.
