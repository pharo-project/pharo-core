pharo - updates
update20623
	"self new update20623"
	self withUpdateLog: '11639 Backport Pharo2.0: Memory leak when using weak announcements with blocks
	https://pharo.fogbugz.com/f/cases/11639

(pass 2/2)
'.
	self loadTogether: self script596 merge: false.
	self flushCaches.
