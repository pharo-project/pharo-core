pharo - updates
update20476
	"self new update20476"
	self withUpdateLog: 'Issue 7177:	Cannot browse correctly some class using traits method with @{.........}
	http://code.google.com/p/pharo/issues/detail?id=7177
	
Issue 6469:	[Nautilus BUG]: Package rename should update extension methods
	http://code.google.com/p/pharo/issues/detail?id=6469'.
	self loadTogether: self script454 merge: false.
	self flushCaches.
