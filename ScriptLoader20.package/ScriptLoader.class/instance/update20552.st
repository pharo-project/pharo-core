pharo - updates
update20552
	"self new update20552"
	(MCPackage named: 'FuelMetalevelTests') workingCopy unload.	
(MCPackage named: 'FuelMetalevel') workingCopy unload.	.
	self withUpdateLog: ' Issue 7524:	Remove FuelMetalevel and FuelMetalevelTests from Pharo 2.0
	http://code.google.com/p/pharo/issues/detail?id=7524
	
Issue 7515:	Monkey fails due to missing test results
	http://code.google.com/p/pharo/issues/detail?id=7515
	
Issue 7510:	Nautilus should run a class tests as a suite
	http://code.google.com/p/pharo/issues/detail?id=7510
	
Issue 7396:	[Spec] ButtonModel should support askBeforeChanging
	http://code.google.com/p/pharo/issues/detail?id=7396'.
	self loadTogether: self script527 merge: false.
	self flushCaches.
