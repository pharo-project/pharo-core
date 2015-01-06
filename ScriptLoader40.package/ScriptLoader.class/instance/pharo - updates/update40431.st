update40431
	"self new update40431"
	self withUpdateLog: '14679 Fix layout glitch in FileDialogWindows text preview
	https://pharo.fogbugz.com/f/cases/14679

14678 fix DNU #index when redefining a class with slots that have no index
	https://pharo.fogbugz.com/f/cases/14678

14675 correctly set superclass when creating classes with slots
	https://pharo.fogbugz.com/f/cases/14675'.
	self loadTogether: self script431 merge: false.
	self flushCaches.
