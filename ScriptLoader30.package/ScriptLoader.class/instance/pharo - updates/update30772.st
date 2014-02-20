update30772
	"self new update30772"
	self withUpdateLog: '12603 Should not be able to add instance variables to SmallInteger, Float, ...
	https://pharo.fogbugz.com/f/cases/12603

'.
	self loadTogether: self script425 merge: false.
	DangerousClassNotifier enable.
	self flushCaches.
