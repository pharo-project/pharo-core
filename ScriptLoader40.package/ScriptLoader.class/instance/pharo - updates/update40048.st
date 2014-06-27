update40048
	"self new update40048"
	self withUpdateLog: '13420 Abstract slot class should emit code to reflectively read the slot
	https://pharo.fogbugz.com/f/cases/13420

13419 remove OCInstanceVariable
	https://pharo.fogbugz.com/f/cases/13419

13405 Get support for temporary files 
	https://pharo.fogbugz.com/f/cases/13405

'.
	self loadTogether: self script48 merge: false.
	self flushCaches.
