update40354
	"self new update40354"
	self withUpdateLog: '13260 inspecting variables in the debugger fails in some cases
	https://pharo.fogbugz.com/f/cases/13260

14393 CollectionValueHolder>>remove: does not annnounce change
	https://pharo.fogbugz.com/f/cases/14393

14397 reduce polymorph extension methods
	https://pharo.fogbugz.com/f/cases/14397'.
	self loadTogether: self script354 merge: false.
	self flushCaches.
