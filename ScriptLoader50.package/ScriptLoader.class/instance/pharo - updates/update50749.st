update50749
	"self new update50749"
	self withUpdateLog: '18159 put on Shortcut reminder 
	https://pharo.fogbugz.com/f/cases/18159'.
	self loadTogether: self script50749 merge: false.
	
ShortcutReminder enabled: true.
	self flushCaches.
