update50680
	"self new update50680"
	self withUpdateLog: '17804 --no-default-preferences does not work on the latest Pharo 5
	https://pharo.fogbugz.com/f/cases/17804'.
	self loadTogether: self script50680 merge: false.
	
SessionManager default unregisterClassNamed: #SystemSettingsPersistence.
	self flushCaches.
