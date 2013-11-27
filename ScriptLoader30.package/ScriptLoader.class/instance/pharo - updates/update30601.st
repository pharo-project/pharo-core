update30601
	"self new update30601"
	self withUpdateLog: '10160 Give a nice way to duplicate classes for test purpose
	https://pharo.fogbugz.com/f/cases/10160

12256 ListDialogWindow>>chooseFromOwner is not well implemented
	https://pharo.fogbugz.com/f/cases/12256
'.
	self loadTogether: self script256 merge: false.
	self flushCaches.
