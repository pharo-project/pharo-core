update30627
	"self new update30627"
	self withUpdateLog: '12304 MCWorkingCopyBrowser filter is slow
	https://pharo.fogbugz.com/f/cases/12304'.
	self loadTogether: self script282 merge: false.
	Komitter initialize.
	self flushCaches.
