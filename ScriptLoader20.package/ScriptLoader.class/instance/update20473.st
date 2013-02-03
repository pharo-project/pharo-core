pharo - updates
update20473
	"self new update20473"
	self withUpdateLog: 'Issue 7219:	SubscriptOutOfBound error in GoBackStringMorph
	http://code.google.com/p/pharo/issues/detail?id=7219'.
	self loadTogether: self script451 merge: false.
	self flushCaches.
