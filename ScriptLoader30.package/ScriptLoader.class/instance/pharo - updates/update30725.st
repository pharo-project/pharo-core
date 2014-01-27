update30725
	"self new update30725"
	self withUpdateLog: '12733 FileReference >> #absolutePath returns relative path
	https://pharo.fogbugz.com/f/cases/12733

12715 Editing class comments looks broken with Nautilus
	https://pharo.fogbugz.com/f/cases/12715

'.
	self loadTogether: self script378 merge: false.
	self flushCaches.
