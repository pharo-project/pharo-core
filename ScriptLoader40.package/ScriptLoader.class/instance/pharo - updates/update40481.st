update40481
	"self new update40481"
	self withUpdateLog: '14851 Extend AbstractCache API to allow cache population using #at:put:
	https://pharo.fogbugz.com/f/cases/14851

14883 Add two examples for Slots
	https://pharo.fogbugz.com/f/cases/14883'.
	self loadTogether: self script481 merge: false.
	
TextEditor initialize.
SmalltalkEditor initialize.
	self flushCaches.
