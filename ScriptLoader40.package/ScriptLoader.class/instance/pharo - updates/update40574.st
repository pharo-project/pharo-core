update40574
	"self new update40574"
	self withUpdateLog: '15192 revert 14890
	https://pharo.fogbugz.com/f/cases/15192

15151 TextInputFieldModel creation is slow
	https://pharo.fogbugz.com/f/cases/15151

15196 Simple before and after links with minimal disturbance
	https://pharo.fogbugz.com/f/cases/15196

15086 Ctrl + Arrow Behaviour
	https://pharo.fogbugz.com/f/cases/15086

'.
	self loadTogether: self script574 merge: false.
	self flushCaches.
self cleanRepositories.
