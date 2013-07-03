pharo - updates
update20610
	"self new update20610"
	self withUpdateLog: '11101 fileOutMethod:on: uncategorized in 2.0
	https://pharo.fogbugz.com/f/cases/11101'.
	self loadTogether: self script583 merge: false.
	(ClassDescription >> #fileOutMethod:on:) protocol: 'filein/out'.
.
	self flushCaches.
