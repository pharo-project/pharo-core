pharo - updates
update20117
	"self new update20117"
	self withUpdateLog: '- Issue 6024:	Change SystemChangeNotifier subscriptions step 1. Thanks Guillermo Polito. So cool to have you with us. I like your systematic attitude. :)
	http://code.google.com/p/pharo/issues/detail?id=6024'.
	self loadTogether: self script107 merge: false.
	(Smalltalk at: #SystemChangeNotifier) uniqueInstance noMoreNotificationsFor: TestCase.
	(Smalltalk at: #SystemChangeNotifier) uniqueInstance noMoreNotificationsFor: NOCCompletionTable.
	(Smalltalk at: #SystemChangeNotifier) uniqueInstance noMoreNotificationsFor: KMPragmaKeymapBuilder.
	self flushCaches.
