update60263
	"self new update60263"
	self withUpdateLog: '17743 Focusorder is broken with Spec dialogs
	https://pharo.fogbugz.com/f/cases/17743

19194 Failing Process tests while using FullBlockClosure
	https://pharo.fogbugz.com/f/cases/19194

19216  Add styler support for different temp vars (method/block arg/temps)
	https://pharo.fogbugz.com/f/cases/19216'.
	self loadTogether: self script60263 merge: false.
	self flushCaches.
