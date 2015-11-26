update50474
	"self new update50474"
	self withUpdateLog: '17142 Break needs to be after senders in suggestion menu
	https://pharo.fogbugz.com/f/cases/17142

17141 Ones BreakPoints need to de-install *before* the node, no after
	https://pharo.fogbugz.com/f/cases/17141

17063 Rename superclass does not update Nautilus classdefinition pane for subclasses
	https://pharo.fogbugz.com/f/cases/17063'.
	self loadTogether: self script50474 merge: false.
	self flushCaches.
