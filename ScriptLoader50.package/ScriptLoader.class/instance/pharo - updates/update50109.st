update50109
	"self new update50109"
	self withUpdateLog: '15660 Add String methods for removing prefix/suffix
	https://pharo.fogbugz.com/f/cases/15660

15756 Move FileStream usages to File and Friends
	https://pharo.fogbugz.com/f/cases/15756

15759 Remove debug code from ASMJit
	https://pharo.fogbugz.com/f/cases/15759

15718 Remove StringHolder
	https://pharo.fogbugz.com/f/cases/15718'.
	self loadTogether: self script50109 merge: false.
	self flushCaches.
