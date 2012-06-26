pharo - updates
update20135
	"self new update20135"
	self withUpdateLog: '- Issue 5967:	FSForReal. (part five...)
	The return of the lastModTime....'.
	self loadTogether: self script125 merge: false.
	self flushCaches.
