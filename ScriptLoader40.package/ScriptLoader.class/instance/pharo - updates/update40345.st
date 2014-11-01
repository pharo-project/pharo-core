update40345
	"self new update40345"
	self withUpdateLog: '14335 renaming addUpdating:action: into addUpdating:selector:
	https://pharo.fogbugz.com/f/cases/14335

14360 ThemeIcons should be cleared on #cleanUp
	https://pharo.fogbugz.com/f/cases/14360'.
	self loadTogether: self script345 merge: false.
	self flushCaches.
