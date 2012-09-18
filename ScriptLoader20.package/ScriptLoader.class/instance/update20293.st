pharo - updates
update20293
	"self new update20293"
	self withUpdateLog: 'Issue 6677:	replace some methodDict keys includes: with #includesSelector:
	http://code.google.com/p/pharo/issues/detail?id=66776'.
	self loadTogether: self script280 merge: false.
	self flushCaches.
