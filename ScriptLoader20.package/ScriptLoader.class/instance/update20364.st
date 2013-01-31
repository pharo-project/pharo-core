pharo - updates
update20364
	"self new update20364"
	self withUpdateLog: 'Issue 6864:	21/10 change in TransferMorph>>withPassenger:from:hand: makes erroneous position for dragged morph
	http://code.google.com/p/pharo/issues/detail?id=6864

Issue 6851:	failing test: RGMonticelloTest>>#testConvertingMCClassDefinition
	http://code.google.com/p/pharo/issues/detail?id=6851

Issue 6877:	1.5 hour does not work
	http://code.google.com/p/pharo/issues/detail?id=6877
	

'.
	self loadTogether: self script346 merge: false.
	self flushCaches.
