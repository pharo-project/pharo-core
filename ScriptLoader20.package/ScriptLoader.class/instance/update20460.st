pharo - updates
update20460
	"self new update20460"
	self withUpdateLog: '-  Issue 7178:	MC cache resynching'.
	self loadTogether: self script438 merge: false.
	self flushCaches.
