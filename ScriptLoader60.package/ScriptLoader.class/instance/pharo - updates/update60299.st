update60299
	"self new update60299"
	self withUpdateLog: '19370 cleanup toBraceStack: 
	https://pharo.fogbugz.com/f/cases/19370

19375 Compiler allows last char to be "
	https://pharo.fogbugz.com/f/cases/19375

19369 FastTable: needless position resetting with visible selection
	https://pharo.fogbugz.com/f/cases/19369

19379 MCVersionSaved has buggy printOn
	https://pharo.fogbugz.com/f/cases/19379

19346 New ProtocolRenamed announcement is needed together with ClassReorganized
	https://pharo.fogbugz.com/f/cases/19346'.
	self loadTogether: self script60299 merge: false.
	self loadConfiguration: 'FastTable' version: '0.10.6'.self flushCaches.
