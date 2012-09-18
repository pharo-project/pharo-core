pharo - updates
update20287
	"self new update20287"
	self withUpdateLog: '
Issue 6658:	Include the RB Tests. 
How could we live without them? Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=6658
	
Issue 6363:	Format command (linked to Ctrl+r). Thanks Thierry Goubier and Benjamin Van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=6363
	
Issue 6667:	Nautilus Improvement. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=6667'.
	self loadTogether: self script274 merge: false.
	self flushCaches.
