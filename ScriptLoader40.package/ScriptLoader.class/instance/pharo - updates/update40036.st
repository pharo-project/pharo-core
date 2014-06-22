update40036
	"self new update40036"
	self withUpdateLog: '13352 Move some polymorphic extensions to their classes
	https://pharo.fogbugz.com/f/cases/13352

'.
	self loadTogether: self script36 merge: false.
	self flushCaches.
