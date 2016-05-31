update60050
	"self new update60050"
	self withUpdateLog: '18364 Polymorph-Widgets should not extend GLMTabLabelBrick  
	https://pharo.fogbugz.com/f/cases/18364

18363 Prepare Remove package Polymorph-TaskbarIcons
	https://pharo.fogbugz.com/f/cases/18363

18366 move Polymorph-Widgets extension ProcessBrowser>>theme
	https://pharo.fogbugz.com/f/cases/18366'.
	self loadTogether: self script60050 merge: false.
	self flushCaches.
