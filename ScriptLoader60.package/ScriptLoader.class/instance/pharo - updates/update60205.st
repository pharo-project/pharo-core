update60205
	"self new update60205"
	self withUpdateLog: '19042 QA 3.2.6
	https://pharo.fogbugz.com/f/cases/19042

19043 UnlimtedIvar slot: fix a #name deprecation side effect
	https://pharo.fogbugz.com/f/cases/19043'.
	self loadTogether: self script60205 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.2.6'.self flushCaches.
