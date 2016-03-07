update50630
	"self new update50630"
	self withUpdateLog: '17761 move #astNodes messages to the Reflectivity package
	https://pharo.fogbugz.com/f/cases/17761

17763 RingChunkImporter>>#msgClassComment:with: still uses Text for class comments
	https://pharo.fogbugz.com/f/cases/17763

17747 Nautilus history navigation hotkeys prevent entering square brackets on german/spanish Mac OS X
	https://pharo.fogbugz.com/f/cases/17747

17764 Update UFFI
	https://pharo.fogbugz.com/f/cases/17764'.
	self loadTogether: self script50630 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.14.2'.self flushCaches.
