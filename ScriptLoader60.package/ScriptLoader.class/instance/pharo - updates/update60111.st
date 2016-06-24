update60111
	"self new update60111"
	self withUpdateLog: '18592 fix a #name deprecation in Manifest Builder
	https://pharo.fogbugz.com/f/cases/18592

18587 Show depreciated methods with strikethrough emphasis
	https://pharo.fogbugz.com/f/cases/18587

18584 DNU on showing menu in PointerExplorer
	https://pharo.fogbugz.com/f/cases/18584'.
	self loadTogether: self script60111 merge: false.
	self flushCaches.
