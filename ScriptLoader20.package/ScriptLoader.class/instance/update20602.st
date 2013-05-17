pharo - updates
update20602
	"self new update20602"
	self withUpdateLog: '10396 backport 2.0 10395 DNU SmallInteger>>#add: when loading metacello configuration
	https://pharo.fogbugz.com/f/cases/10396
	
10394 Duplicated instance #model in NewList (already defined in MorphicModel)
	https://pharo.fogbugz.com/f/cases/10394
	
10387 backport 2.0: 10102 SocketStream>>next: should not signal ConncetionClosed
	https://pharo.fogbugz.com/f/cases/10387
	
10336 Port 2.0: Document difference between TextModel and TextInputFieldModel
	https://pharo.fogbugz.com/f/cases/10336
	
10311 Backport 2.0: 10228 Fix tab key for autocompletion
	https://pharo.fogbugz.com/f/cases/10311'.
	self loadTogether: self script575 merge: false.
	self flushCaches.
