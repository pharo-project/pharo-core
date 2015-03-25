update40582
	"self new update40582"
	self withUpdateLog: '13761 Fraction floating pointer cannot be debugged
	https://pharo.fogbugz.com/f/cases/13761

15215 Prevent the World locking due to multiple modal dialogs open
	https://pharo.fogbugz.com/f/cases/15215'.
	self loadTogether: self script582 merge: false.
	
(RBParserTest>>#testNumberParsing )recompile.
	self flushCaches.
