update50575
	"self new update50575"
	self withUpdateLog: '17555 Update FastTable: In Linux some shortcuts use alt, some others ctrl
	https://pharo.fogbugz.com/f/cases/17555

17565 remove String>>#adaptToNumber:andSend:
	https://pharo.fogbugz.com/f/cases/17565'.
	self loadTogether: self script50575 merge: false.
	self loadConfiguration: 'FastTable' version: '0.10'.self flushCaches.
