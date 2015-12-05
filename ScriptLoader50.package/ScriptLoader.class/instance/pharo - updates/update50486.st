update50486
	"self new update50486"
	self withUpdateLog: '17187 make link de- installation more stable
	https://pharo.fogbugz.com/f/cases/17187

17188 remove unsent methods from AbstracTool and Nautilus
	https://pharo.fogbugz.com/f/cases/17188

17163 remove Setting #warningAllowed
	https://pharo.fogbugz.com/f/cases/17163'.
	self loadTogether: self script50486 merge: false.
	self flushCaches.
