update50469
	"self new update50469"
	self withUpdateLog: '17123 allowing start and stop recording for watchpoints
	https://pharo.fogbugz.com/f/cases/17123

16361 There are some empty packages
	https://pharo.fogbugz.com/f/cases/16361

17121 Allow breakpoint on everything
	https://pharo.fogbugz.com/f/cases/17121'.
	self loadTogether: self script50469 merge: false.
	self flushCaches.
