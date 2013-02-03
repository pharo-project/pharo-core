pharo - updates
update20478
	"self new update20478"
	self withUpdateLog: 'Issue 7280:	When changing the superclasss the class comment and all method categories of all subclasses are gone
	http://code.google.com/p/pharo/issues/detail?id=7280
	
Issue 6686:	Nautilus should use Dropdown, Tabs or Checkbox to indicate Class/instance-side
	http://code.google.com/p/pharo/issues/detail?id=6686'.
	self loadTogether: self script456 merge: false.
	self flushCaches.
