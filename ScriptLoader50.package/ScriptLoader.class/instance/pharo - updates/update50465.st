update50465
	"self new update50465"
	self withUpdateLog: '17097 add support for #value for MessageSend #after
	https://pharo.fogbugz.com/f/cases/17097

17087 Nautilus: remove setting #useExperimentalFastTable
	https://pharo.fogbugz.com/f/cases/17087

17096 Watchpoints
	https://pharo.fogbugz.com/f/cases/17096'.
	self loadTogether: self script50465 merge: false.
	self flushCaches.
