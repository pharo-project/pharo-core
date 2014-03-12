update30795
	"self new update30795"
	self withUpdateLog: '13019 Browser method-pane menuitem [Add breakpoint] corrupts debugger stepping behavior
	https://pharo.fogbugz.com/f/cases/13019

12294 Copying class copies comment template
	https://pharo.fogbugz.com/f/cases/12294

'.
	self loadTogether: self script448 merge: false.
	self flushCaches.
