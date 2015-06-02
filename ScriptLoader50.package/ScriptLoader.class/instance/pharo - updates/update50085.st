update50085
	"self new update50085"
	self withUpdateLog: '15644 empty comment pane in nautilus
	https://pharo.fogbugz.com/f/cases/15644'.
	self loadTogether: self script50085 merge: false.
	
AbstractNautilusUI initialize; resetIconCaches.
	self flushCaches.
