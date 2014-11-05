update40355
	"self new update40355"
	self withUpdateLog: '14396 Merge Polymorph-EventEnhancements into the event mechanism that it extends
	https://pharo.fogbugz.com/f/cases/14396

14398 remove Spec-Tools-Editor
	https://pharo.fogbugz.com/f/cases/14398'.
	self loadTogether: self script355 merge: false.
	self flushCaches.
