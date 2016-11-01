update60273
	"self new update60273"
	self withUpdateLog: '19243 different parents in one ast tree
	https://pharo.fogbugz.com/f/cases/19243

19257 Uppercase bindings do not work
	https://pharo.fogbugz.com/f/cases/19257

19269 QA update v3.2.8
	https://pharo.fogbugz.com/f/cases/19269'.
	self loadTogether: self script60273 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.2.8'.self flushCaches.
