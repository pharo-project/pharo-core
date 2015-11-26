update50473
	"self new update50473"
	self withUpdateLog: '16712 Completion: Dont try Globals as completion for string values
	https://pharo.fogbugz.com/f/cases/16712

17139 Breakpoints: add once / condition to method menu
	https://pharo.fogbugz.com/f/cases/17139

17138 Watchpoint on variable if assignment is not compiled correctly
	https://pharo.fogbugz.com/f/cases/17138

17137 remove suggestion entry "Delete Watchpoint History"
	https://pharo.fogbugz.com/f/cases/17137'.
	self loadTogether: self script50473 merge: false.
	self flushCaches.
