update60116
	"self new update60116"
	self withUpdateLog: '18607 Cleaning icon management in Nautilus
	https://pharo.fogbugz.com/f/cases/18607'.
	self loadTogether: self script60116 merge: false.
	self flushCaches.
