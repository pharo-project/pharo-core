update40446
	"self new update40446"
	self withUpdateLog: '14733 do not check for coding convention on addClassVariable:
	https://pharo.fogbugz.com/f/cases/14733

14731 Fixing DNU binding in GT and Nautilus
	https://pharo.fogbugz.com/f/cases/14731

'.
	self loadTogether: self script446 merge: false.
	self flushCaches.
self cleanRepositories.
