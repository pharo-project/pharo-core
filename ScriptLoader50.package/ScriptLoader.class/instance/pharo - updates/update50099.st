update50099
	"self new update50099"
	self withUpdateLog: '13180 Class class>>superclassOrder: should preserve classes order
	https://pharo.fogbugz.com/f/cases/13180

11711 Remove CodeHolder
	https://pharo.fogbugz.com/f/cases/11711'.
	self loadTogether: self script50099 merge: false.
	self flushCaches.
