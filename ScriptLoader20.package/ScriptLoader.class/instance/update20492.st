pharo - updates
update20492
	"self new update20492"
	self withUpdateLog: 'Issue 4970:	[ENH]: calendar chooser morph. Thanks Sean De Nigris.

Issue 7240:	Failing Test: ReleaseTest>>.testInstanceSideMethodsWithNilKeyInLastLiteral.
	Thanks Camille Teruel.
	
Issue 7205:	Alert: and friends are missing from NonInteractiveUIManager. Thanks Christophe Demarey'.
	self loadTogether: self script470 merge: false.
	self flushCaches.
