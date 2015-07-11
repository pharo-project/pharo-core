update50167
	"self new update50167"
	self withUpdateLog: '15947 Right and left click exchanged for world menu
	https://pharo.fogbugz.com/f/cases/15947

15898 enable FastTable in Nautilus by default
	https://pharo.fogbugz.com/f/cases/15898'.
	self loadTogether: self script50167 merge: false.
	
 Nautilus useExperimentalFastTable: true.
	self flushCaches.
