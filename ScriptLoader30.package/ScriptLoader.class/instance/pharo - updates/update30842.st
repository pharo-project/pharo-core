update30842
	"self new update30842"
	self withUpdateLog: '- fix direct links to sources file in image'.
	self loadTogether: self script104 merge: false.
	self flushCaches.
