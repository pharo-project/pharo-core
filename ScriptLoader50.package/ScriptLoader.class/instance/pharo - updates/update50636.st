update50636
	"self new update50636"
	self withUpdateLog: '17504 TextLink + subclasses lacks implementation of #= and #hash
	https://pharo.fogbugz.com/f/cases/17504

17796 Debugger step over basicNew of proxies is not working
	https://pharo.fogbugz.com/f/cases/17796

17769 The debugger should trigger an event before executing a debugging action
	https://pharo.fogbugz.com/f/cases/17769

17655 Changes in package loading behavior
	https://pharo.fogbugz.com/f/cases/17655'.
	self loadTogether: self script50636 merge: false.
	self flushCaches.
