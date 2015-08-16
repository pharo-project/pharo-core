update50238
	"self new update50238"
	self withUpdateLog: '16229 NEC is disabled and prior default values are unset
	https://pharo.fogbugz.com/f/cases/16229'.
	self loadTogether: self script50238 merge: false.
	
NECPreferences enabled: true.
NECPreferences expandPrefixes: true.
NECPreferences useEnterToAccept: true.
NECPreferences caseSensitive: true.
NECPreferences smartCharacters: true.
.
	self flushCaches.
