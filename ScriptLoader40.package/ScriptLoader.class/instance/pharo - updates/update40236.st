update40236
	"self new update40236"
	self withUpdateLog: '14037 #recompile does not recompile the classTrait
	https://pharo.fogbugz.com/f/cases/14037'.
	self loadTogether: self script236 merge: false.
	self flushCaches.
