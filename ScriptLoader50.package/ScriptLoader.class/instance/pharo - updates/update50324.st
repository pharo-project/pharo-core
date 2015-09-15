update50324
	"self new update50324"
	self withUpdateLog: '16561 Remove senders of subscribe:send:to: in GToolkit
	https://pharo.fogbugz.com/f/cases/16561

16501 Remove senders of subscribe:send:to: in Glamour
	https://pharo.fogbugz.com/f/cases/16501'.
	self loadTogether: self script50324 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.2.12'.
self loadConfiguration: 'GlamourCore' version: '3.2.1'.self flushCaches.
