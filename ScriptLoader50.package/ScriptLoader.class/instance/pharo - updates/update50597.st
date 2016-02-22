update50597
	"self new update50597"
	self withUpdateLog: '17665 HDTestReport reports unexpected passes as successful
	https://pharo.fogbugz.com/f/cases/17665

17570 Shortcuts to browse code are not available any more in some tools
	https://pharo.fogbugz.com/f/cases/17570

17584 Broken menu in ChangesBrowsers code pane
	https://pharo.fogbugz.com/f/cases/17584'.
	self loadTogether: self script50597 merge: false.
	self flushCaches.
