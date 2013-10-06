update30451
	"self new update30451"
	self withUpdateLog: '11457 #asSqueakPathName is a bad name
	https://pharo.fogbugz.com/f/cases/11457
'.
	self loadTogether: self script106 merge: false.
	self flushCaches.
