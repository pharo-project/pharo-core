update50595
	"self new update50595"
	self withUpdateLog: '17541 PharoVM crash in Moose 6.0 image when hovering mouse pointer over Roassal View
	https://pharo.fogbugz.com/f/cases/17541'.
	self loadTogether: self script50595 merge: false.
	self loadConfiguration: 'Athens' version: '3.8.1'.self flushCaches.
