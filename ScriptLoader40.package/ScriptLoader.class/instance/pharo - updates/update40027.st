update40027
	"self new update40027"
	self withUpdateLog: '13343 Should move some spec morphic adapter extensions to their classes
	https://pharo.fogbugz.com/f/cases/13343

'.
	self loadTogether: self script27 merge: false.
	SHTextStylerST80 initialize .
	self flushCaches.
