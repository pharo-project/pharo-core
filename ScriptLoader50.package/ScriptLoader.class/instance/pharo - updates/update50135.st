update50135
	"self new update50135"
	self withUpdateLog: '15838 Reflectivity: allow to reify #variable for Globals
	https://pharo.fogbugz.com/f/cases/15838

15837 Move all RF code from Opal to Opal Plugin
	https://pharo.fogbugz.com/f/cases/15837'.
	self loadTogether: self script50135 merge: false.
	self flushCaches.
