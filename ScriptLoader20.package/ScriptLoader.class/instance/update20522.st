pharo - updates
update20522
	"self new update20522"
	self withUpdateLog: 'Issue 7449:	do ContextPart initializePrimitiveSimulators while Pharo Kernel shrinking
	http://code.google.com/p/pharo/issues/detail?id=7449
	
Issue 7448:	move some categories out from System-FileRegistry
	http://code.google.com/p/pharo/issues/detail?id=7448
	
Issue 7450:	safe usage of SoundService from Beeper
	http://code.google.com/p/pharo/issues/detail?id=7450
'.
	self loadTogether: self script499 merge: false.
	self flushCaches.
