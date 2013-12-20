update30657
	"self new update30657"
	self withUpdateLog: '11656 In HelpTopic when a subtopic is added, the subtopic does not point back to its owner
	https://pharo.fogbugz.com/f/cases/11656
	
12463 de-skip testCurrent	
	https://pharo.fogbugz.com/f/cases/12463

12210 Superfluous Snapshot Message
	https://pharo.fogbugz.com/f/cases/12210
	
12466 Nautilus does not refresh when deleting a category
	https://pharo.fogbugz.com/f/cases/12466
'.
	self loadTogether: self script310 merge: false.
	self flushCaches.
