update30600
	"self new update30600"
	self withUpdateLog: '12248 Add Job class>>current to know the current (running) job
	https://pharo.fogbugz.com/f/cases/12248
	
12238 ProtocolOrganizer allProtocols vs protocols are inconsistent
	https://pharo.fogbugz.com/f/cases/12238
	
12246 package tree does not search packages by key pressing
	https://pharo.fogbugz.com/f/cases/12246

'.
	self loadTogether: self script255 merge: false.
	self flushCaches.
