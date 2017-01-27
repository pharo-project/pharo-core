update50767
	"self new update50767"
	self withUpdateLog: '19568 Socket local host/port has incorrect guard
	https://pharo.fogbugz.com/f/cases/19568

19518 Backport Pharo5: LabelModel defaultColor is Color black, should be theme aware
	https://pharo.fogbugz.com/f/cases/19518'.
	self loadTogether: self script50767 merge: false.
	self flushCaches.
