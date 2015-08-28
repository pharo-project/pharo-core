update40620
	"self new update40620"
	self withUpdateLog: '16388 Backport Pharo4: 16387 remove Cursor read showWhile: from ImageReadWriter>>#formFromStream:
	https://pharo.fogbugz.com/f/cases/16388'.
	self loadTogether: self script620 merge: false.
	self flushCaches.
