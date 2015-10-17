update40623
	"self new update40623"
	self withUpdateLog: '16736 Fix Nautilus #openOnClass: for Pharo4
	https://pharo.fogbugz.com/f/cases/16736

16777 Querying block with many temps fails
	https://pharo.fogbugz.com/f/cases/16777'.
	self loadTogether: self script623 merge: false.
	self flushCaches.
