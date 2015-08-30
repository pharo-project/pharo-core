update50288
	"self new update50288"
	self withUpdateLog: '16431 Announcements with QualityAssistant
	https://pharo.fogbugz.com/f/cases/16431

16417 instant Syntax Error Notification
	https://pharo.fogbugz.com/f/cases/16417

16423 Replace == nil with isNil in AST-Core
	https://pharo.fogbugz.com/f/cases/16423

16419 nil sourcePointer on Active Ring methods
	https://pharo.fogbugz.com/f/cases/16419'.
	self loadTogether: self script50288 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v1.4.1'.self flushCaches.
