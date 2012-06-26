pharo - updates
update20142
	"self new update20142"
	self withUpdateLog: '- Issue 6084:	[BUG]: File Browser cannot load mcz files.
	Thanks Sean DeNigris
	http://code.google.com/p/pharo/issues/detail?id=6084
	
- Issue 6088:	primitive:numArgs:numTemps:stackSize:literals:bytecodes:trailer: should use #needsFrameSize:. Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=6088
	
-  Issue 6087:	make doPerformOldLargeFrame to decompile with the temps
	Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=6087
	
-  Issue 6083:	Mouse down events are being processed twice. Thanks Sean DeNigris.
	http://code.google.com/p/pharo/issues/detail?id=6083'.
	self loadTogether: self script132 merge: false.
	self flushCaches.
